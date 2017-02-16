.class public abstract Landroid/printservice/IPrintService$Stub;
.super Landroid/os/Binder;
.source "IPrintService.java"

# interfaces
.implements Landroid/printservice/IPrintService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/printservice/IPrintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/printservice/IPrintService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.printservice.IPrintService"

.field static final TRANSACTION_createPrinterDiscoverySession:I = 0x4

.field static final TRANSACTION_destroyPrinterDiscoverySession:I = 0xb

.field static final TRANSACTION_onPrintJobQueued:I = 0x3

.field static final TRANSACTION_requestCancelPrintJob:I = 0x2

.field static final TRANSACTION_requestCustomPrinterIcon:I = 0x9

.field static final TRANSACTION_setClient:I = 0x1

.field static final TRANSACTION_startPrinterDiscovery:I = 0x5

.field static final TRANSACTION_startPrinterStateTracking:I = 0x8

.field static final TRANSACTION_stopPrinterDiscovery:I = 0x6

.field static final TRANSACTION_stopPrinterStateTracking:I = 0xa

.field static final TRANSACTION_validatePrinters:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.printservice.IPrintService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/printservice/IPrintService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_0

    .line 29
    return-object v1

    .line 31
    :cond_0
    const-string/jumbo v1, "android.printservice.IPrintService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/printservice/IPrintService;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/printservice/IPrintService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/printservice/IPrintService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/printservice/IPrintService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
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
    const/4 v5, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 158
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 47
    :sswitch_0
    const-string/jumbo v4, "android.printservice.IPrintService"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v5

    .line 52
    :sswitch_1
    const-string/jumbo v4, "android.printservice.IPrintService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/printservice/IPrintServiceClient$Stub;->asInterface(Landroid/os/IBinder;)Landroid/printservice/IPrintServiceClient;

    move-result-object v2

    .line 55
    .local v2, "_arg0":Landroid/printservice/IPrintServiceClient;
    invoke-virtual {p0, v2}, Landroid/printservice/IPrintService$Stub;->setClient(Landroid/printservice/IPrintServiceClient;)V

    .line 56
    return v5

    .line 60
    .end local v2    # "_arg0":Landroid/printservice/IPrintServiceClient;
    :sswitch_2
    const-string/jumbo v4, "android.printservice.IPrintService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    sget-object v4, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintJobInfo;

    .line 68
    :goto_0
    invoke-virtual {p0, v0}, Landroid/printservice/IPrintService$Stub;->requestCancelPrintJob(Landroid/print/PrintJobInfo;)V

    .line 69
    return v5

    .line 66
    :cond_0
    const/4 v0, 0x0

    .local v0, "_arg0":Landroid/print/PrintJobInfo;
    goto :goto_0

    .line 73
    .end local v0    # "_arg0":Landroid/print/PrintJobInfo;
    :sswitch_3
    const-string/jumbo v4, "android.printservice.IPrintService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 76
    sget-object v4, Landroid/print/PrintJobInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintJobInfo;

    .line 81
    :goto_1
    invoke-virtual {p0, v0}, Landroid/printservice/IPrintService$Stub;->onPrintJobQueued(Landroid/print/PrintJobInfo;)V

    .line 82
    return v5

    .line 79
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/print/PrintJobInfo;
    goto :goto_1

    .line 86
    .end local v0    # "_arg0":Landroid/print/PrintJobInfo;
    :sswitch_4
    const-string/jumbo v4, "android.printservice.IPrintService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Landroid/printservice/IPrintService$Stub;->createPrinterDiscoverySession()V

    .line 88
    return v5

    .line 92
    :sswitch_5
    const-string/jumbo v4, "android.printservice.IPrintService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    sget-object v4, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 95
    .local v3, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-virtual {p0, v3}, Landroid/printservice/IPrintService$Stub;->startPrinterDiscovery(Ljava/util/List;)V

    .line 96
    return v5

    .line 100
    .end local v3    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    :sswitch_6
    const-string/jumbo v4, "android.printservice.IPrintService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Landroid/printservice/IPrintService$Stub;->stopPrinterDiscovery()V

    .line 102
    return v5

    .line 106
    :sswitch_7
    const-string/jumbo v4, "android.printservice.IPrintService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    sget-object v4, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v3

    .line 109
    .restart local v3    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    invoke-virtual {p0, v3}, Landroid/printservice/IPrintService$Stub;->validatePrinters(Ljava/util/List;)V

    .line 110
    return v5

    .line 114
    .end local v3    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrinterId;>;"
    :sswitch_8
    const-string/jumbo v4, "android.printservice.IPrintService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 117
    sget-object v4, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrinterId;

    .line 122
    :goto_2
    invoke-virtual {p0, v1}, Landroid/printservice/IPrintService$Stub;->startPrinterStateTracking(Landroid/print/PrinterId;)V

    .line 123
    return v5

    .line 120
    :cond_2
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/print/PrinterId;
    goto :goto_2

    .line 127
    .end local v1    # "_arg0":Landroid/print/PrinterId;
    :sswitch_9
    const-string/jumbo v4, "android.printservice.IPrintService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3

    .line 130
    sget-object v4, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrinterId;

    .line 135
    :goto_3
    invoke-virtual {p0, v1}, Landroid/printservice/IPrintService$Stub;->requestCustomPrinterIcon(Landroid/print/PrinterId;)V

    .line 136
    return v5

    .line 133
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/print/PrinterId;
    goto :goto_3

    .line 140
    .end local v1    # "_arg0":Landroid/print/PrinterId;
    :sswitch_a
    const-string/jumbo v4, "android.printservice.IPrintService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    .line 143
    sget-object v4, Landroid/print/PrinterId;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/print/PrinterId;

    .line 148
    :goto_4
    invoke-virtual {p0, v1}, Landroid/printservice/IPrintService$Stub;->stopPrinterStateTracking(Landroid/print/PrinterId;)V

    .line 149
    return v5

    .line 146
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/print/PrinterId;
    goto :goto_4

    .line 153
    .end local v1    # "_arg0":Landroid/print/PrinterId;
    :sswitch_b
    const-string/jumbo v4, "android.printservice.IPrintService"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Landroid/printservice/IPrintService$Stub;->destroyPrinterDiscoverySession()V

    .line 155
    return v5

    .line 43
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
