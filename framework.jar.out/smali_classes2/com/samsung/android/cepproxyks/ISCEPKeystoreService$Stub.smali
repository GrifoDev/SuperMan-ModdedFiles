.class public abstract Lcom/samsung/android/cepproxyks/ISCEPKeystoreService$Stub;
.super Landroid/os/Binder;
.source "ISCEPKeystoreService.java"

# interfaces
.implements Lcom/samsung/android/cepproxyks/ISCEPKeystoreService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/cepproxyks/ISCEPKeystoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cepproxyks/ISCEPKeystoreService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.cepproxyks.ISCEPKeystoreService"

.field static final TRANSACTION_deletecertificateEntry:I = 0x3

.field static final TRANSACTION_getCertificate:I = 0x5

.field static final TRANSACTION_grantAccessForAKS:I = 0x4

.field static final TRANSACTION_installCACert:I = 0x6

.field static final TRANSACTION_installCACertForWifiCCM:I = 0x7

.field static final TRANSACTION_installCertificateInAndroidKeyStore:I = 0x2

.field static final TRANSACTION_isAliasExists:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "com.samsung.android.cepproxyks.ISCEPKeystoreService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cepproxyks/ISCEPKeystoreService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 27
    if-nez p0, :cond_0

    .line 28
    return-object v1

    .line 30
    :cond_0
    const-string/jumbo v1, "com.samsung.android.cepproxyks.ISCEPKeystoreService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/cepproxyks/ISCEPKeystoreService;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lcom/samsung/android/cepproxyks/ISCEPKeystoreService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/samsung/android/cepproxyks/ISCEPKeystoreService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/samsung/android/cepproxyks/ISCEPKeystoreService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 12
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 156
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 46
    :sswitch_0
    const-string/jumbo v0, "com.samsung.android.cepproxyks.ISCEPKeystoreService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x1

    return v0

    .line 51
    :sswitch_1
    const-string/jumbo v0, "com.samsung.android.cepproxyks.ISCEPKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 55
    .local v8, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v9, 0x1

    .line 56
    .local v9, "_arg1":Z
    :goto_0
    invoke-virtual {p0, v8, v9}, Lcom/samsung/android/cepproxyks/ISCEPKeystoreService$Stub;->isAliasExists(Ljava/lang/String;Z)I

    move-result v10

    .line 57
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    const/4 v0, 0x1

    return v0

    .line 55
    .end local v9    # "_arg1":Z
    .end local v10    # "_result":I
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 63
    .end local v8    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v0, "com.samsung.android.cepproxyks.ISCEPKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    sget-object v0, Lcom/samsung/android/cepproxyks/CertByte;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cepproxyks/CertByte;

    .line 72
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createCharArray()[C

    move-result-object v3

    .line 76
    .local v3, "_arg2":[C
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v4, 0x1

    .line 78
    .local v4, "_arg3":Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .local v5, "_arg4":I
    move-object v0, p0

    .line 79
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/cepproxyks/ISCEPKeystoreService$Stub;->installCertificateInAndroidKeyStore(Lcom/samsung/android/cepproxyks/CertByte;Ljava/lang/String;[CZI)I

    move-result v10

    .line 80
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    const/4 v0, 0x1

    return v0

    .line 69
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":[C
    .end local v4    # "_arg3":Z
    .end local v5    # "_arg4":I
    .end local v10    # "_result":I
    :cond_1
    const/4 v1, 0x0

    .local v1, "_arg0":Lcom/samsung/android/cepproxyks/CertByte;
    goto :goto_1

    .line 76
    .end local v1    # "_arg0":Lcom/samsung/android/cepproxyks/CertByte;
    .restart local v2    # "_arg1":Ljava/lang/String;
    .restart local v3    # "_arg2":[C
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Z
    goto :goto_2

    .line 86
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":[C
    .end local v4    # "_arg3":Z
    :sswitch_3
    const-string/jumbo v0, "com.samsung.android.cepproxyks.ISCEPKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 90
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v9, 0x1

    .line 91
    .restart local v9    # "_arg1":Z
    :goto_3
    invoke-virtual {p0, v8, v9}, Lcom/samsung/android/cepproxyks/ISCEPKeystoreService$Stub;->deletecertificateEntry(Ljava/lang/String;Z)I

    move-result v10

    .line 92
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    const/4 v0, 0x1

    return v0

    .line 90
    .end local v9    # "_arg1":Z
    .end local v10    # "_result":I
    :cond_3
    const/4 v9, 0x0

    goto :goto_3

    .line 98
    .end local v8    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v0, "com.samsung.android.cepproxyks.ISCEPKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 102
    .local v6, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 103
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v6, v2}, Lcom/samsung/android/cepproxyks/ISCEPKeystoreService$Stub;->grantAccessForAKS(ILjava/lang/String;)V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 105
    const/4 v0, 0x1

    return v0

    .line 109
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg0":I
    :sswitch_5
    const-string/jumbo v0, "com.samsung.android.cepproxyks.ISCEPKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 112
    .restart local v8    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/samsung/android/cepproxyks/ISCEPKeystoreService$Stub;->getCertificate(Ljava/lang/String;)Lcom/samsung/android/cepproxyks/CertificateAKS;

    move-result-object v11

    .line 113
    .local v11, "_result":Lcom/samsung/android/cepproxyks/CertificateAKS;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    if-eqz v11, :cond_4

    .line 115
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    const/4 v0, 0x1

    invoke-virtual {v11, p3, v0}, Lcom/samsung/android/cepproxyks/CertificateAKS;->writeToParcel(Landroid/os/Parcel;I)V

    .line 121
    :goto_4
    const/4 v0, 0x1

    return v0

    .line 119
    :cond_4
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 125
    .end local v8    # "_arg0":Ljava/lang/String;
    .end local v11    # "_result":Lcom/samsung/android/cepproxyks/CertificateAKS;
    :sswitch_6
    const-string/jumbo v0, "com.samsung.android.cepproxyks.ISCEPKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 128
    sget-object v0, Lcom/samsung/android/cepproxyks/CertificateAKS;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/cepproxyks/CertificateAKS;

    .line 133
    :goto_5
    invoke-virtual {p0, v7}, Lcom/samsung/android/cepproxyks/ISCEPKeystoreService$Stub;->installCACert(Lcom/samsung/android/cepproxyks/CertificateAKS;)I

    move-result v10

    .line 134
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 135
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    const/4 v0, 0x1

    return v0

    .line 131
    .end local v10    # "_result":I
    :cond_5
    const/4 v7, 0x0

    .local v7, "_arg0":Lcom/samsung/android/cepproxyks/CertificateAKS;
    goto :goto_5

    .line 140
    .end local v7    # "_arg0":Lcom/samsung/android/cepproxyks/CertificateAKS;
    :sswitch_7
    const-string/jumbo v0, "com.samsung.android.cepproxyks.ISCEPKeystoreService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 143
    sget-object v0, Lcom/samsung/android/cepproxyks/CertificateAKS;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/cepproxyks/CertificateAKS;

    .line 149
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 150
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v7, v2}, Lcom/samsung/android/cepproxyks/ISCEPKeystoreService$Stub;->installCACertForWifiCCM(Lcom/samsung/android/cepproxyks/CertificateAKS;Ljava/lang/String;)I

    move-result v10

    .line 151
    .restart local v10    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    const/4 v0, 0x1

    return v0

    .line 146
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v10    # "_result":I
    :cond_6
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Lcom/samsung/android/cepproxyks/CertificateAKS;
    goto :goto_6

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
