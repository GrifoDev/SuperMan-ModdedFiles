.class Lcom/android/settings/UserCredentialsSettings$Credential;
.super Ljava/lang/Object;
.source "UserCredentialsSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UserCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Credential"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/UserCredentialsSettings$Credential$1;,
        Lcom/android/settings/UserCredentialsSettings$Credential$Type;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings/UserCredentialsSettings$Credential;",
            ">;"
        }
    .end annotation
.end field

.field private static KNOX_CCM:I

.field private static KNOX_UCM:I


# instance fields
.field final alias:Ljava/lang/String;

.field private isWifiForKnox:Z

.field private storageType:I

.field final storedTypes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/settings/UserCredentialsSettings$Credential$Type;",
            ">;"
        }
    .end annotation
.end field

.field final uid:I


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/settings/UserCredentialsSettings$Credential;->KNOX_CCM:I

    return v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/android/settings/UserCredentialsSettings$Credential;->KNOX_UCM:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/settings/UserCredentialsSettings$Credential;)I
    .locals 1

    iget v0, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->storageType:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/settings/UserCredentialsSettings$Credential;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->isWifiForKnox:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/android/settings/UserCredentialsSettings$Credential;->KNOX_CCM:I

    const/4 v0, 0x2

    sput v0, Lcom/android/settings/UserCredentialsSettings$Credential;->KNOX_UCM:I

    new-instance v0, Lcom/android/settings/UserCredentialsSettings$Credential$1;

    invoke-direct {v0}, Lcom/android/settings/UserCredentialsSettings$Credential$1;-><init>()V

    sput-object v0, Lcom/android/settings/UserCredentialsSettings$Credential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 10

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-direct {p0, v1, v4}, Lcom/android/settings/UserCredentialsSettings$Credential;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-static {}, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->values()[Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    move-result-object v4

    const/4 v1, 0x0

    array-length v5, v4

    :goto_0
    if-ge v1, v5, :cond_1

    aget-object v0, v4, v1

    invoke-virtual {v0}, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->ordinal()I

    move-result v6

    const-wide/16 v8, 0x1

    shl-long v6, v8, v6

    and-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    invoke-virtual {v6, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    iput v1, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->storageType:I

    iput-boolean v1, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->isWifiForKnox:Z

    iput-object p1, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->alias:Ljava/lang/String;

    iput p2, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->uid:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    iput v1, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->storageType:I

    iput-boolean v1, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->isWifiForKnox:Z

    iput-object p1, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->alias:Ljava/lang/String;

    iput p2, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->uid:I

    iput p3, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->storageType:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isKnox()Z
    .locals 2

    iget v0, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->storageType:I

    sget v1, Lcom/android/settings/UserCredentialsSettings$Credential;->KNOX_CCM:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->storageType:I

    sget v1, Lcom/android/settings/UserCredentialsSettings$Credential;->KNOX_UCM:I

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isSystem()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/settings/UserCredentialsSettings$Credential;->isKnox()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    iget v1, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isWifiForKnox()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->isWifiForKnox:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 8

    iget-object v4, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->alias:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->uid:I

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/android/settings/UserCredentialsSettings$Credential;->storedTypes:Ljava/util/EnumSet;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/UserCredentialsSettings$Credential$Type;

    invoke-virtual {v0}, Lcom/android/settings/UserCredentialsSettings$Credential$Type;->ordinal()I

    move-result v4

    const-wide/16 v6, 0x1

    shl-long v4, v6, v4

    or-long/2addr v2, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
