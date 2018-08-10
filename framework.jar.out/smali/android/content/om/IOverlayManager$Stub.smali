.class public abstract Landroid/content/om/IOverlayManager$Stub;
.super Landroid/os/Binder;
.source "IOverlayManager.java"

# interfaces
.implements Landroid/content/om/IOverlayManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/om/IOverlayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/om/IOverlayManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.content.om.IOverlayManager"

.field static final TRANSACTION_applyOpenThemeOverlays:I = 0x9

.field static final TRANSACTION_getAllOverlays:I = 0x1

.field static final TRANSACTION_getOverlayInfo:I = 0x3

.field static final TRANSACTION_getOverlayInfosForTarget:I = 0x2

.field static final TRANSACTION_setEnabled:I = 0x4

.field static final TRANSACTION_setEnabledExclusive:I = 0x5

.field static final TRANSACTION_setHighestPriority:I = 0x7

.field static final TRANSACTION_setLowestPriority:I = 0x8

.field static final TRANSACTION_setPriority:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "android.content.om.IOverlayManager"

    invoke-virtual {p0, p0, v0}, Landroid/content/om/IOverlayManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "android.content.om.IOverlayManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/content/om/IOverlayManager;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/content/om/IOverlayManager;

    return-object v0

    :cond_1
    new-instance v1, Landroid/content/om/IOverlayManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/content/om/IOverlayManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sparse-switch p1, :sswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v14

    return v14

    :sswitch_0
    const-string/jumbo v14, "android.content.om.IOverlayManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v14, 0x1

    return v14

    :sswitch_1
    const-string/jumbo v14, "android.content.om.IOverlayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/content/om/IOverlayManager$Stub;->getAllOverlays(I)Ljava/util/Map;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    const/4 v14, 0x1

    return v14

    :sswitch_2
    const-string/jumbo v14, "android.content.om.IOverlayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Landroid/content/om/IOverlayManager$Stub;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    const/4 v14, 0x1

    return v14

    :sswitch_3
    const-string/jumbo v14, "android.content.om.IOverlayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Landroid/content/om/IOverlayManager$Stub;->getOverlayInfo(Ljava/lang/String;I)Landroid/content/om/OverlayInfo;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v10, :cond_0

    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v14}, Landroid/content/om/OverlayInfo;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    const/4 v14, 0x1

    return v14

    :cond_0
    const/4 v14, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :sswitch_4
    const-string/jumbo v14, "android.content.om.IOverlayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_1

    const/4 v7, 0x1

    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p0, v2, v7, v8}, Landroid/content/om/IOverlayManager$Stub;->setEnabled(Ljava/lang/String;ZI)Z

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_2

    const/4 v14, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    goto :goto_2

    :sswitch_5
    const-string/jumbo v14, "android.content.om.IOverlayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    if-eqz v14, :cond_3

    const/4 v7, 0x1

    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p0, v2, v7, v8}, Landroid/content/om/IOverlayManager$Stub;->setEnabledExclusive(Ljava/lang/String;ZI)Z

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_4

    const/4 v14, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_3
    const/4 v7, 0x0

    goto :goto_3

    :cond_4
    const/4 v14, 0x0

    goto :goto_4

    :sswitch_6
    const-string/jumbo v14, "android.content.om.IOverlayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {p0, v2, v5, v8}, Landroid/content/om/IOverlayManager$Stub;->setPriority(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_5

    const/4 v14, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_5
    const/4 v14, 0x0

    goto :goto_5

    :sswitch_7
    const-string/jumbo v14, "android.content.om.IOverlayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Landroid/content/om/IOverlayManager$Stub;->setHighestPriority(Ljava/lang/String;I)Z

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_6

    const/4 v14, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_6
    const/4 v14, 0x0

    goto :goto_6

    :sswitch_8
    const-string/jumbo v14, "android.content.om.IOverlayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p0, v2, v4}, Landroid/content/om/IOverlayManager$Stub;->setLowestPriority(Ljava/lang/String;I)Z

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_7

    const/4 v14, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_7
    const/4 v14, 0x0

    goto :goto_7

    :sswitch_9
    const-string/jumbo v14, "android.content.om.IOverlayManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v14

    invoke-static {v14}, Landroid/content/om/ISamsungOverlayCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/ISamsungOverlayCallback;

    move-result-object v9

    invoke-virtual {p0, v3, v6, v8, v9}, Landroid/content/om/IOverlayManager$Stub;->applyOpenThemeOverlays(Ljava/util/List;Ljava/util/List;ILandroid/content/om/ISamsungOverlayCallback;)Z

    move-result v13

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v13, :cond_8

    const/4 v14, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v14, 0x1

    return v14

    :cond_8
    const/4 v14, 0x0

    goto :goto_8

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
