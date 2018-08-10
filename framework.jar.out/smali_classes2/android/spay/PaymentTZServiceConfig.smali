.class public Landroid/spay/PaymentTZServiceConfig;
.super Ljava/lang/Object;
.source "PaymentTZServiceConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/spay/PaymentTZServiceConfig$1;,
        Landroid/spay/PaymentTZServiceConfig$2;,
        Landroid/spay/PaymentTZServiceConfig$TAConfig;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/spay/PaymentTZServiceConfig;",
            ">;"
        }
    .end annotation
.end field

.field private static final QSEE_UNKNOWN_PROCESS:Ljava/lang/String; = "unknown"

.field private static final QSEE_UNKNOWN_ROOT:Ljava/lang/String; = "unknown"

.field private static final TBASE_UNKNOWN_PROCESS:Ljava/lang/String; = "ffffffff000000000000000000000000"

.field private static final TBASE_UNKNOWN_ROOT:Ljava/lang/String; = "0"

.field private static final UNKNOWN_TA_TECHNOLOGY:Ljava/lang/String; = "unknown"

.field private static final bQC:Z


# instance fields
.field public mClient:Landroid/os/IBinder;

.field public mTAConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/spay/PaymentTZServiceConfig$TAConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Landroid/spay/PaymentTZServiceConfig;->bQC:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string/jumbo v1, "(?i)(msm[a-z0-9]*)|(sdm[a-z0-9]*)"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/spay/PaymentTZServiceConfig;->bQC:Z

    new-instance v0, Landroid/spay/PaymentTZServiceConfig$2;

    invoke-direct {v0}, Landroid/spay/PaymentTZServiceConfig$2;-><init>()V

    sput-object v0, Landroid/spay/PaymentTZServiceConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/spay/PaymentTZServiceConfig$1;

    invoke-direct {v0, p0}, Landroid/spay/PaymentTZServiceConfig$1;-><init>(Landroid/spay/PaymentTZServiceConfig;)V

    iput-object v0, p0, Landroid/spay/PaymentTZServiceConfig;->mClient:Landroid/os/IBinder;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/spay/PaymentTZServiceConfig;->mTAConfigs:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/spay/PaymentTZServiceConfig$1;

    invoke-direct {v0, p0}, Landroid/spay/PaymentTZServiceConfig$1;-><init>(Landroid/spay/PaymentTZServiceConfig;)V

    iput-object v0, p0, Landroid/spay/PaymentTZServiceConfig;->mClient:Landroid/os/IBinder;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/spay/PaymentTZServiceConfig;->mTAConfigs:Ljava/util/Map;

    invoke-virtual {p0, p1}, Landroid/spay/PaymentTZServiceConfig;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/spay/PaymentTZServiceConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/spay/PaymentTZServiceConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public addTAConfig(ILandroid/spay/PaymentTZServiceConfig$TAConfig;)V
    .locals 2

    iget-object v0, p0, Landroid/spay/PaymentTZServiceConfig;->mTAConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTAConfig(I)Landroid/spay/PaymentTZServiceConfig$TAConfig;
    .locals 2

    iget-object v0, p0, Landroid/spay/PaymentTZServiceConfig;->mTAConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/spay/PaymentTZServiceConfig$TAConfig;

    return-object v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 10

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Landroid/spay/PaymentTZServiceConfig;->mClient:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_0

    iget-object v8, p0, Landroid/spay/PaymentTZServiceConfig;->mTAConfigs:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    new-instance v0, Landroid/spay/PaymentTZServiceConfig$TAConfig;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Landroid/spay/PaymentTZServiceConfig$TAConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeTAConfig(I)V
    .locals 2

    iget-object v0, p0, Landroid/spay/PaymentTZServiceConfig;->mTAConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v2, p0, Landroid/spay/PaymentTZServiceConfig;->mClient:Landroid/os/IBinder;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    iget-object v2, p0, Landroid/spay/PaymentTZServiceConfig;->mTAConfigs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/spay/PaymentTZServiceConfig;->mTAConfigs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/spay/PaymentTZServiceConfig;->mTAConfigs:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/spay/PaymentTZServiceConfig$TAConfig;

    iget-object v2, v2, Landroid/spay/PaymentTZServiceConfig$TAConfig;->taTechnology:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/spay/PaymentTZServiceConfig;->mTAConfigs:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/spay/PaymentTZServiceConfig$TAConfig;

    iget-object v2, v2, Landroid/spay/PaymentTZServiceConfig$TAConfig;->rootName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/spay/PaymentTZServiceConfig;->mTAConfigs:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/spay/PaymentTZServiceConfig$TAConfig;

    iget-object v2, v2, Landroid/spay/PaymentTZServiceConfig$TAConfig;->processName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/spay/PaymentTZServiceConfig;->mTAConfigs:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/spay/PaymentTZServiceConfig$TAConfig;

    iget v2, v2, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxSendCmdSize:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v2, p0, Landroid/spay/PaymentTZServiceConfig;->mTAConfigs:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/spay/PaymentTZServiceConfig$TAConfig;

    iget v2, v2, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxRecvRespSize:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    return-void
.end method
