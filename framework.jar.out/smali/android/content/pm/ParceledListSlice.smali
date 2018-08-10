.class public Landroid/content/pm/ParceledListSlice;
.super Landroid/content/pm/BaseParceledListSlice;
.source "ParceledListSlice.java"


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
        "Landroid/content/pm/BaseParceledListSlice",
        "<TT;>;"
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/pm/ParceledListSlice$1;

    invoke-direct {v0}, Landroid/content/pm/ParceledListSlice$1;-><init>()V

    sput-object v0, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/content/pm/BaseParceledListSlice;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

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

    invoke-direct {p0, p1}, Landroid/content/pm/BaseParceledListSlice;-><init>(Ljava/util/List;)V

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


# virtual methods
.method public describeContents()I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    invoke-interface {v3}, Landroid/os/Parcelable;->describeContents()I

    move-result v3

    or-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public bridge synthetic getList()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Landroid/content/pm/BaseParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected readParcelableCreator(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Landroid/os/Parcelable$Creator",
            "<*>;"
        }
    .end annotation

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelableCreator(Ljava/lang/ClassLoader;)Landroid/os/Parcelable$Creator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setInlineCountLimit(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/content/pm/BaseParceledListSlice;->setInlineCountLimit(I)V

    return-void
.end method

.method protected writeElement(Landroid/os/Parcelable;Landroid/os/Parcel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Parcel;",
            "I)V"
        }
    .end annotation

    invoke-interface {p1, p2, p3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method

.method protected bridge synthetic writeElement(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .locals 0

    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/ParceledListSlice;->writeElement(Landroid/os/Parcelable;Landroid/os/Parcel;I)V

    return-void
.end method

.method protected writeParcelableCreator(Landroid/os/Parcelable;Landroid/os/Parcel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/os/Parcel;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeParcelableCreator(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected bridge synthetic writeParcelableCreator(Ljava/lang/Object;Landroid/os/Parcel;)V
    .locals 0

    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/ParceledListSlice;->writeParcelableCreator(Landroid/os/Parcelable;Landroid/os/Parcel;)V

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/content/pm/BaseParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
