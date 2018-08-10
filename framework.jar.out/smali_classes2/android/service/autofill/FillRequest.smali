.class public final Landroid/service/autofill/FillRequest;
.super Ljava/lang/Object;
.source "FillRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/FillRequest$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/autofill/FillRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_MANUAL_REQUEST:I = 0x1

.field public static final INVALID_REQUEST_ID:I = -0x80000000


# instance fields
.field private final mClientState:Landroid/os/Bundle;

.field private final mContexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/service/autofill/FillContext;",
            ">;"
        }
    .end annotation
.end field

.field private final mFlags:I

.field private final mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/autofill/FillRequest$1;

    invoke-direct {v0}, Landroid/service/autofill/FillRequest$1;-><init>()V

    sput-object v0, Landroid/service/autofill/FillRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;Landroid/os/Bundle;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/service/autofill/FillContext;",
            ">;",
            "Landroid/os/Bundle;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/service/autofill/FillRequest;->mId:I

    const/4 v0, 0x1

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    move-result v0

    iput v0, p0, Landroid/service/autofill/FillRequest;->mFlags:I

    const-string/jumbo v0, "contexts"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/service/autofill/FillRequest;->mContexts:Ljava/util/ArrayList;

    iput-object p3, p0, Landroid/service/autofill/FillRequest;->mClientState:Landroid/os/Bundle;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/autofill/FillRequest;->mId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/service/autofill/FillRequest;->mContexts:Ljava/util/ArrayList;

    iget-object v0, p0, Landroid/service/autofill/FillRequest;->mContexts:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/FillRequest;->mClientState:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/autofill/FillRequest;->mFlags:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/service/autofill/FillRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/autofill/FillRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getClientState()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/FillRequest;->mClientState:Landroid/os/Bundle;

    return-object v0
.end method

.method public getFillContexts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/service/autofill/FillContext;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/autofill/FillRequest;->mContexts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    iget v0, p0, Landroid/service/autofill/FillRequest;->mFlags:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Landroid/service/autofill/FillRequest;->mId:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/service/autofill/FillRequest;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/autofill/FillRequest;->mContexts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    iget-object v0, p0, Landroid/service/autofill/FillRequest;->mClientState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget v0, p0, Landroid/service/autofill/FillRequest;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
