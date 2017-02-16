.class public abstract Landroid/content/pm/IPersonaLockSettingsHandler$Stub;
.super Landroid/os/Binder;
.source "IPersonaLockSettingsHandler.java"

# interfaces
.implements Landroid/content/pm/IPersonaLockSettingsHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/IPersonaLockSettingsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/IPersonaLockSettingsHandler$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.pm.IPersonaLockSettingsHandler"

.field static final TRANSACTION_checkPassword:I = 0xa

.field static final TRANSACTION_checkPattern:I = 0x8

.field static final TRANSACTION_getBoolean:I = 0x4

.field static final TRANSACTION_getLong:I = 0x5

.field static final TRANSACTION_getString:I = 0x6

.field static final TRANSACTION_havePassword:I = 0xc

.field static final TRANSACTION_havePattern:I = 0xb

.field static final TRANSACTION_removeUser:I = 0xd

.field static final TRANSACTION_setBoolean:I = 0x1

.field static final TRANSACTION_setLockPassword:I = 0x9

.field static final TRANSACTION_setLockPattern:I = 0x7

.field static final TRANSACTION_setLong:I = 0x2

.field static final TRANSACTION_setString:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.content.pm.IPersonaLockSettingsHandler"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaLockSettingsHandler;
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
    const-string/jumbo v1, "android.content.pm.IPersonaLockSettingsHandler"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/pm/IPersonaLockSettingsHandler;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/content/pm/IPersonaLockSettingsHandler;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/content/pm/IPersonaLockSettingsHandler$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/pm/IPersonaLockSettingsHandler$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 11
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

    .line 287
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v10

    return v10

    .line 43
    :sswitch_0
    const-string/jumbo v10, "android.content.pm.IPersonaLockSettingsHandler"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v10, 0x1

    return v10

    .line 48
    :sswitch_1
    const-string/jumbo v10, "android.content.pm.IPersonaLockSettingsHandler"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_0

    const/4 v7, 0x1

    .line 54
    .local v7, "_arg1":Z
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 55
    .local v8, "_arg2":I
    invoke-virtual {p0, v1, v7, v8}, Landroid/content/pm/IPersonaLockSettingsHandler$Stub;->setBoolean(Ljava/lang/String;ZI)Landroid/os/Bundle;

    move-result-object v9

    .line 56
    .local v9, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    if-eqz v9, :cond_1

    .line 58
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    const/4 v10, 0x1

    invoke-virtual {v9, p3, v10}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 64
    :goto_1
    const/4 v10, 0x1

    return v10

    .line 52
    .end local v7    # "_arg1":Z
    .end local v8    # "_arg2":I
    .end local v9    # "_result":Landroid/os/Bundle;
    :cond_0
    const/4 v7, 0x0

    .restart local v7    # "_arg1":Z
    goto :goto_0

    .line 62
    .restart local v8    # "_arg2":I
    .restart local v9    # "_result":Landroid/os/Bundle;
    :cond_1
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 68
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Z
    .end local v8    # "_arg2":I
    .end local v9    # "_result":Landroid/os/Bundle;
    :sswitch_2
    const-string/jumbo v10, "android.content.pm.IPersonaLockSettingsHandler"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 72
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 74
    .local v4, "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 75
    .restart local v8    # "_arg2":I
    invoke-virtual {p0, v1, v4, v5, v8}, Landroid/content/pm/IPersonaLockSettingsHandler$Stub;->setLong(Ljava/lang/String;JI)Landroid/os/Bundle;

    move-result-object v9

    .line 76
    .restart local v9    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v9, :cond_2

    .line 78
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    const/4 v10, 0x1

    invoke-virtual {v9, p3, v10}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 84
    :goto_2
    const/4 v10, 0x1

    return v10

    .line 82
    :cond_2
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 88
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":J
    .end local v8    # "_arg2":I
    .end local v9    # "_result":Landroid/os/Bundle;
    :sswitch_3
    const-string/jumbo v10, "android.content.pm.IPersonaLockSettingsHandler"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 92
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 94
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 95
    .restart local v8    # "_arg2":I
    invoke-virtual {p0, v1, v6, v8}, Landroid/content/pm/IPersonaLockSettingsHandler$Stub;->setString(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v9

    .line 96
    .restart local v9    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    if-eqz v9, :cond_3

    .line 98
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    const/4 v10, 0x1

    invoke-virtual {v9, p3, v10}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 104
    :goto_3
    const/4 v10, 0x1

    return v10

    .line 102
    :cond_3
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 108
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v9    # "_result":Landroid/os/Bundle;
    :sswitch_4
    const-string/jumbo v10, "android.content.pm.IPersonaLockSettingsHandler"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 112
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_4

    const/4 v7, 0x1

    .line 114
    .restart local v7    # "_arg1":Z
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 115
    .restart local v8    # "_arg2":I
    invoke-virtual {p0, v1, v7, v8}, Landroid/content/pm/IPersonaLockSettingsHandler$Stub;->getBoolean(Ljava/lang/String;ZI)Landroid/os/Bundle;

    move-result-object v9

    .line 116
    .restart local v9    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 117
    if-eqz v9, :cond_5

    .line 118
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    const/4 v10, 0x1

    invoke-virtual {v9, p3, v10}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 124
    :goto_5
    const/4 v10, 0x1

    return v10

    .line 112
    .end local v7    # "_arg1":Z
    .end local v8    # "_arg2":I
    .end local v9    # "_result":Landroid/os/Bundle;
    :cond_4
    const/4 v7, 0x0

    .restart local v7    # "_arg1":Z
    goto :goto_4

    .line 122
    .restart local v8    # "_arg2":I
    .restart local v9    # "_result":Landroid/os/Bundle;
    :cond_5
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 128
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v7    # "_arg1":Z
    .end local v8    # "_arg2":I
    .end local v9    # "_result":Landroid/os/Bundle;
    :sswitch_5
    const-string/jumbo v10, "android.content.pm.IPersonaLockSettingsHandler"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 132
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 134
    .restart local v4    # "_arg1":J
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 135
    .restart local v8    # "_arg2":I
    invoke-virtual {p0, v1, v4, v5, v8}, Landroid/content/pm/IPersonaLockSettingsHandler$Stub;->getLong(Ljava/lang/String;JI)Landroid/os/Bundle;

    move-result-object v9

    .line 136
    .restart local v9    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v9, :cond_6

    .line 138
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    const/4 v10, 0x1

    invoke-virtual {v9, p3, v10}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 144
    :goto_6
    const/4 v10, 0x1

    return v10

    .line 142
    :cond_6
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 148
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v4    # "_arg1":J
    .end local v8    # "_arg2":I
    .end local v9    # "_result":Landroid/os/Bundle;
    :sswitch_6
    const-string/jumbo v10, "android.content.pm.IPersonaLockSettingsHandler"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 152
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 154
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 155
    .restart local v8    # "_arg2":I
    invoke-virtual {p0, v1, v6, v8}, Landroid/content/pm/IPersonaLockSettingsHandler$Stub;->getString(Ljava/lang/String;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v9

    .line 156
    .restart local v9    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v9, :cond_7

    .line 158
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    const/4 v10, 0x1

    invoke-virtual {v9, p3, v10}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 164
    :goto_7
    const/4 v10, 0x1

    return v10

    .line 162
    :cond_7
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 168
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    .end local v8    # "_arg2":I
    .end local v9    # "_result":Landroid/os/Bundle;
    :sswitch_7
    const-string/jumbo v10, "android.content.pm.IPersonaLockSettingsHandler"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 172
    .local v2, "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 173
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/IPersonaLockSettingsHandler$Stub;->setLockPattern([BI)Landroid/os/Bundle;

    move-result-object v9

    .line 174
    .restart local v9    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    if-eqz v9, :cond_8

    .line 176
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    const/4 v10, 0x1

    invoke-virtual {v9, p3, v10}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 182
    :goto_8
    const/4 v10, 0x1

    return v10

    .line 180
    :cond_8
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 186
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":I
    .end local v9    # "_result":Landroid/os/Bundle;
    :sswitch_8
    const-string/jumbo v10, "android.content.pm.IPersonaLockSettingsHandler"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 190
    .restart local v2    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 191
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/IPersonaLockSettingsHandler$Stub;->checkPattern([BI)Landroid/os/Bundle;

    move-result-object v9

    .line 192
    .restart local v9    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    if-eqz v9, :cond_9

    .line 194
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    const/4 v10, 0x1

    invoke-virtual {v9, p3, v10}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 200
    :goto_9
    const/4 v10, 0x1

    return v10

    .line 198
    :cond_9
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_9

    .line 204
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":I
    .end local v9    # "_result":Landroid/os/Bundle;
    :sswitch_9
    const-string/jumbo v10, "android.content.pm.IPersonaLockSettingsHandler"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 208
    .restart local v2    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 209
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/IPersonaLockSettingsHandler$Stub;->setLockPassword([BI)Landroid/os/Bundle;

    move-result-object v9

    .line 210
    .restart local v9    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    if-eqz v9, :cond_a

    .line 212
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    const/4 v10, 0x1

    invoke-virtual {v9, p3, v10}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 218
    :goto_a
    const/4 v10, 0x1

    return v10

    .line 216
    :cond_a
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 222
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":I
    .end local v9    # "_result":Landroid/os/Bundle;
    :sswitch_a
    const-string/jumbo v10, "android.content.pm.IPersonaLockSettingsHandler"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 226
    .restart local v2    # "_arg0":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 227
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/content/pm/IPersonaLockSettingsHandler$Stub;->checkPassword([BI)Landroid/os/Bundle;

    move-result-object v9

    .line 228
    .restart local v9    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    if-eqz v9, :cond_b

    .line 230
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    const/4 v10, 0x1

    invoke-virtual {v9, p3, v10}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 236
    :goto_b
    const/4 v10, 0x1

    return v10

    .line 234
    :cond_b
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 240
    .end local v2    # "_arg0":[B
    .end local v3    # "_arg1":I
    .end local v9    # "_result":Landroid/os/Bundle;
    :sswitch_b
    const-string/jumbo v10, "android.content.pm.IPersonaLockSettingsHandler"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 243
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaLockSettingsHandler$Stub;->havePattern(I)Landroid/os/Bundle;

    move-result-object v9

    .line 244
    .restart local v9    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    if-eqz v9, :cond_c

    .line 246
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    const/4 v10, 0x1

    invoke-virtual {v9, p3, v10}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 252
    :goto_c
    const/4 v10, 0x1

    return v10

    .line 250
    :cond_c
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_c

    .line 256
    .end local v0    # "_arg0":I
    .end local v9    # "_result":Landroid/os/Bundle;
    :sswitch_c
    const-string/jumbo v10, "android.content.pm.IPersonaLockSettingsHandler"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 259
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaLockSettingsHandler$Stub;->havePassword(I)Landroid/os/Bundle;

    move-result-object v9

    .line 260
    .restart local v9    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    if-eqz v9, :cond_d

    .line 262
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    const/4 v10, 0x1

    invoke-virtual {v9, p3, v10}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 268
    :goto_d
    const/4 v10, 0x1

    return v10

    .line 266
    :cond_d
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_d

    .line 272
    .end local v0    # "_arg0":I
    .end local v9    # "_result":Landroid/os/Bundle;
    :sswitch_d
    const-string/jumbo v10, "android.content.pm.IPersonaLockSettingsHandler"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 275
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/content/pm/IPersonaLockSettingsHandler$Stub;->removeUser(I)Landroid/os/Bundle;

    move-result-object v9

    .line 276
    .restart local v9    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    if-eqz v9, :cond_e

    .line 278
    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    const/4 v10, 0x1

    invoke-virtual {v9, p3, v10}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 284
    :goto_e
    const/4 v10, 0x1

    return v10

    .line 282
    :cond_e
    const/4 v10, 0x0

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
