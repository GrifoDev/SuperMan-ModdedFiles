.class public abstract Lcom/android/internal/widget/IRemoteViewsFactory$Stub;
.super Landroid/os/Binder;
.source "IRemoteViewsFactory.java"

# interfaces
.implements Lcom/android/internal/widget/IRemoteViewsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/IRemoteViewsFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/IRemoteViewsFactory$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.widget.IRemoteViewsFactory"

.field static final TRANSACTION_getCount:I = 0x4

.field static final TRANSACTION_getItemId:I = 0x8

.field static final TRANSACTION_getLoadingView:I = 0x6

.field static final TRANSACTION_getViewAt:I = 0x5

.field static final TRANSACTION_getViewTypeCount:I = 0x7

.field static final TRANSACTION_hasStableIds:I = 0x9

.field static final TRANSACTION_isCreated:I = 0xa

.field static final TRANSACTION_onDataSetChanged:I = 0x1

.field static final TRANSACTION_onDataSetChangedAsync:I = 0x2

.field static final TRANSACTION_onDestroy:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string/jumbo v0, "com.android.internal.widget.IRemoteViewsFactory"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IRemoteViewsFactory;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string/jumbo v1, "com.android.internal.widget.IRemoteViewsFactory"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/widget/IRemoteViewsFactory;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/internal/widget/IRemoteViewsFactory;

    return-object v0

    :cond_1
    new-instance v1, Lcom/android/internal/widget/IRemoteViewsFactory$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v8, 0x1

    sparse-switch p1, :sswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    return v7

    :sswitch_0
    const-string/jumbo v7, "com.android.internal.widget.IRemoteViewsFactory"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v8

    :sswitch_1
    const-string/jumbo v7, "com.android.internal.widget.IRemoteViewsFactory"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->onDataSetChanged()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v8

    :sswitch_2
    const-string/jumbo v7, "com.android.internal.widget.IRemoteViewsFactory"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->onDataSetChangedAsync()V

    return v8

    :sswitch_3
    const-string/jumbo v7, "com.android.internal.widget.IRemoteViewsFactory"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->onDestroy(Landroid/content/Intent;)V

    return v8

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :sswitch_4
    const-string/jumbo v7, "com.android.internal.widget.IRemoteViewsFactory"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->getCount()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :sswitch_5
    const-string/jumbo v9, "com.android.internal.widget.IRemoteViewsFactory"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->getViewAt(I)Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_1

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p3, v8}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    return v8

    :cond_1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :sswitch_6
    const-string/jumbo v9, "com.android.internal.widget.IRemoteViewsFactory"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v3, :cond_2

    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p3, v8}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    return v8

    :cond_2
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :sswitch_7
    const-string/jumbo v7, "com.android.internal.widget.IRemoteViewsFactory"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->getViewTypeCount()I

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :sswitch_8
    const-string/jumbo v7, "com.android.internal.widget.IRemoteViewsFactory"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->getItemId(I)J

    move-result-wide v4

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    return v8

    :sswitch_9
    const-string/jumbo v9, "com.android.internal.widget.IRemoteViewsFactory"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->hasStableIds()Z

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_3

    move v7, v8

    :cond_3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v8

    :sswitch_a
    const-string/jumbo v9, "com.android.internal.widget.IRemoteViewsFactory"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->isCreated()Z

    move-result v6

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz v6, :cond_4

    move v7, v8

    :cond_4
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    return v8

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
