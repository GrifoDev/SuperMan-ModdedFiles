.class public final Lcom/google/protobuf/nano/android/ParcelableMessageNanoCreator;
.super Ljava/lang/Object;
.source "ParcelableMessageNanoCreator.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/protobuf/nano/MessageNano;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static writeToParcel(Ljava/lang/Class;Lcom/google/protobuf/nano/MessageNano;Landroid/os/Parcel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/protobuf/nano/MessageNano;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/protobuf/nano/MessageNano;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/nano/android/ParcelableMessageNanoCreator;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v1, v13, v12}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v12

    const-class v13, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {v12, v13}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v2, v12}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v12, v13}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    move-object v11, v0

    invoke-static {v11, v3}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v11

    :catch_0
    move-exception v4

    const-string/jumbo v12, "PMNCreator"

    const-string/jumbo v13, "Exception trying to create proto from parcel"

    invoke-static {v12, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v7

    const-string/jumbo v12, "PMNCreator"

    const-string/jumbo v13, "Exception trying to create proto from parcel"

    invoke-static {v12, v13, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v6

    const-string/jumbo v12, "PMNCreator"

    const-string/jumbo v13, "Exception trying to create proto from parcel"

    invoke-static {v12, v13, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    move-exception v9

    const-string/jumbo v12, "PMNCreator"

    const-string/jumbo v13, "Exception trying to create proto from parcel"

    invoke-static {v12, v13, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_4
    move-exception v8

    const-string/jumbo v12, "PMNCreator"

    const-string/jumbo v13, "Exception trying to create proto from parcel"

    invoke-static {v12, v13, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_5
    move-exception v5

    const-string/jumbo v12, "PMNCreator"

    const-string/jumbo v13, "Exception trying to create proto from parcel"

    invoke-static {v12, v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableMessageNanoCreator;->createFromParcel(Landroid/os/Parcel;)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/nano/android/ParcelableMessageNanoCreator;->mClazz:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/nano/MessageNano;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/android/ParcelableMessageNanoCreator;->newArray(I)[Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    return-object v0
.end method
