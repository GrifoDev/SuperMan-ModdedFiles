.class public Landroid/content/pm/ParceledListSlice;
.super Ljava/lang/Object;
.source "ParceledListSlice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/ParceledListSlice$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator",
            "<",
            "Landroid/content/pm/ParceledListSlice;",
            ">;"
        }
    .end annotation
.end field

.field private static DEBUG:Z = false

.field private static final MAX_IPC_SIZE:I = 0x10000

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Landroid/content/pm/ParceledListSlice;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/content/pm/ParceledListSlice;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Landroid/content/pm/ParceledListSlice;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/ParceledListSlice;->mList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/content/pm/ParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "ParceledListSlice"

    sput-object v0, Landroid/content/pm/ParceledListSlice;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Landroid/content/pm/ParceledListSlice;->DEBUG:Z

    new-instance v0, Landroid/content/pm/ParceledListSlice$1;

    invoke-direct {v0}, Landroid/content/pm/ParceledListSlice$1;-><init>()V

    sput-object v0, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v9, p0, Landroid/content/pm/ParceledListSlice;->mList:Ljava/util/List;

    sget-boolean v9, Landroid/content/pm/ParceledListSlice;->DEBUG:Z

    if-eqz v9, :cond_0

    sget-object v9, Landroid/content/pm/ParceledListSlice;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Retrieving "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " items"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-gtz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelableCreator(Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-nez v9, :cond_3

    :cond_2
    if-lt v4, v0, :cond_6

    return-void

    :cond_3
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->readCreator(Landroid/os/Parcelable$Creator;Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    if-nez v5, :cond_5

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    :goto_1
    iget-object v9, p0, Landroid/content/pm/ParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v9, Landroid/content/pm/ParceledListSlice;->DEBUG:Z

    if-eqz v9, :cond_4

    sget-object v9, Landroid/content/pm/ParceledListSlice;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Read inline #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/content/pm/ParceledListSlice;->mList:Ljava/util/List;

    iget-object v12, p0, Landroid/content/pm/ParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/content/pm/ParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    :goto_2
    if-ge v4, v0, :cond_a

    sget-boolean v9, Landroid/content/pm/ParceledListSlice;->DEBUG:Z

    if-eqz v9, :cond_7

    sget-object v9, Landroid/content/pm/ParceledListSlice;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Reading more @"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ": retriever="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    invoke-virtual {v2, v4}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v9, 0x1

    const/4 v10, 0x0

    :try_start_0
    invoke-interface {v8, v9, v2, v7, v10}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    if-ge v4, v0, :cond_9

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_9

    invoke-virtual {v7, v1, p2}, Landroid/os/Parcel;->readCreator(Landroid/os/Parcelable$Creator;Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/content/pm/ParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    iget-object v9, p0, Landroid/content/pm/ParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-boolean v9, Landroid/content/pm/ParceledListSlice;->DEBUG:Z

    if-eqz v9, :cond_8

    sget-object v9, Landroid/content/pm/ParceledListSlice;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Read extra #"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/content/pm/ParceledListSlice;->mList:Ljava/util/List;

    iget-object v12, p0, Landroid/content/pm/ParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :catch_0
    move-exception v3

    sget-object v9, Landroid/content/pm/ParceledListSlice;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failure retrieving array; only received "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " of "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_9
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    goto/16 :goto_2

    :cond_a
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Landroid/content/pm/ParceledListSlice;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/content/pm/ParceledListSlice;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/ParceledListSlice;->mList:Ljava/util/List;

    return-void
.end method

.method public static emptyList()Landroid/content/pm/ParceledListSlice;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">()",
            "Landroid/content/pm/ParceledListSlice",
            "<TT;>;"
        }
    .end annotation

    new-instance v0, Landroid/content/pm/ParceledListSlice;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Can\'t unparcel type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in list of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Landroid/content/pm/ParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/content/pm/ParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    invoke-interface {v2}, Landroid/os/Parcelable;->describeContents()I

    move-result v2

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Landroid/content/pm/ParceledListSlice;->mList:Ljava/util/List;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 10

    const/4 v9, 0x0

    iget-object v6, p0, Landroid/content/pm/ParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    move v1, p2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    sget-boolean v6, Landroid/content/pm/ParceledListSlice;->DEBUG:Z

    if-eqz v6, :cond_0

    sget-object v6, Landroid/content/pm/ParceledListSlice;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Writing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " items"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-lez v0, :cond_4

    iget-object v6, p0, Landroid/content/pm/ParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Parcelable;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v6, p0, Landroid/content/pm/ParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Parcelable;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeParcelableCreator(Landroid/os/Parcelable;)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v6

    const/high16 v7, 0x10000

    if-ge v6, v7, :cond_2

    const/4 v6, 0x1

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v6, p0, Landroid/content/pm/ParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Parcelable;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/content/pm/ParceledListSlice;->verifySameType(Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-interface {v4, p1, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    sget-boolean v6, Landroid/content/pm/ParceledListSlice;->DEBUG:Z

    if-eqz v6, :cond_1

    sget-object v6, Landroid/content/pm/ParceledListSlice;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Wrote inline #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/content/pm/ParceledListSlice;->mList:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-ge v2, v0, :cond_4

    invoke-virtual {p1, v9}, Landroid/os/Parcel;->writeInt(I)V

    new-instance v5, Landroid/content/pm/ParceledListSlice$2;

    invoke-direct {v5, p0, v0, v3, p2}, Landroid/content/pm/ParceledListSlice$2;-><init>(Landroid/content/pm/ParceledListSlice;ILjava/lang/Class;I)V

    sget-boolean v6, Landroid/content/pm/ParceledListSlice;->DEBUG:Z

    if-eqz v6, :cond_3

    sget-object v6, Landroid/content/pm/ParceledListSlice;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Breaking @"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ": retriever="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    :cond_4
    return-void
.end method
