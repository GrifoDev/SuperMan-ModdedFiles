.class public final Landroid/service/autofill/FillEventHistory;
.super Ljava/lang/Object;
.source "FillEventHistory.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/FillEventHistory$1;,
        Landroid/service/autofill/FillEventHistory$Event;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/autofill/FillEventHistory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mClientState:Landroid/os/Bundle;

.field mEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/service/autofill/FillEventHistory$Event;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceUid:I

.field private final mSessionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/autofill/FillEventHistory$1;

    invoke-direct {v0}, Landroid/service/autofill/FillEventHistory$1;-><init>()V

    sput-object v0, Landroid/service/autofill/FillEventHistory;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Landroid/service/autofill/FillEventHistory;->mClientState:Landroid/os/Bundle;

    iput p1, p0, Landroid/service/autofill/FillEventHistory;->mServiceUid:I

    iput p2, p0, Landroid/service/autofill/FillEventHistory;->mSessionId:I

    return-void
.end method


# virtual methods
.method public addEvent(Landroid/service/autofill/FillEventHistory$Event;)V
    .locals 2

    iget-object v0, p0, Landroid/service/autofill/FillEventHistory;->mEvents:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/service/autofill/FillEventHistory;->mEvents:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Landroid/service/autofill/FillEventHistory;->mEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getClientState()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/service/autofill/FillEventHistory;->mClientState:Landroid/os/Bundle;

    return-object v0
.end method

.method public getEvents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/service/autofill/FillEventHistory$Event;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/autofill/FillEventHistory;->mEvents:Ljava/util/List;

    return-object v0
.end method

.method public getServiceUid()I
    .locals 1

    iget v0, p0, Landroid/service/autofill/FillEventHistory;->mServiceUid:I

    return v0
.end method

.method public getSessionId()I
    .locals 1

    iget v0, p0, Landroid/service/autofill/FillEventHistory;->mSessionId:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget-object v3, p0, Landroid/service/autofill/FillEventHistory;->mClientState:Landroid/os/Bundle;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget-object v3, p0, Landroid/service/autofill/FillEventHistory;->mEvents:Ljava/util/List;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Landroid/service/autofill/FillEventHistory;->mEvents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Landroid/service/autofill/FillEventHistory;->mEvents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Landroid/service/autofill/FillEventHistory;->mEvents:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/autofill/FillEventHistory$Event;

    invoke-virtual {v0}, Landroid/service/autofill/FillEventHistory$Event;->getType()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Landroid/service/autofill/FillEventHistory$Event;->getDatasetId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
