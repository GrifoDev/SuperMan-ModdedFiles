.class public final Landroid/service/autofill/SaveRequest;
.super Ljava/lang/Object;
.source "SaveRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/SaveRequest$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/autofill/SaveRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mClientState:Landroid/os/Bundle;

.field private final mFillContexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/service/autofill/FillContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/autofill/SaveRequest$1;

    invoke-direct {v0}, Landroid/service/autofill/SaveRequest$1;-><init>()V

    sput-object v0, Landroid/service/autofill/SaveRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    sget-object v0, Landroid/service/autofill/FillContext;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/service/autofill/SaveRequest;-><init>(Ljava/util/ArrayList;Landroid/os/Bundle;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/service/autofill/SaveRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/autofill/SaveRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/service/autofill/FillContext;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "fillContexts"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/service/autofill/SaveRequest;->mFillContexts:Ljava/util/ArrayList;

    iput-object p2, p0, Landroid/service/autofill/SaveRequest;->mClientState:Landroid/os/Bundle;

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

    iget-object v0, p0, Landroid/service/autofill/SaveRequest;->mClientState:Landroid/os/Bundle;

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

    iget-object v0, p0, Landroid/service/autofill/SaveRequest;->mFillContexts:Ljava/util/ArrayList;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/SaveRequest;->mFillContexts:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;I)V

    iget-object v0, p0, Landroid/service/autofill/SaveRequest;->mClientState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
