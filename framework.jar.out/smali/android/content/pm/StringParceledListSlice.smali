.class public Landroid/content/pm/StringParceledListSlice;
.super Landroid/content/pm/BaseParceledListSlice;
.source "StringParceledListSlice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/StringParceledListSlice$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/pm/BaseParceledListSlice",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator",
            "<",
            "Landroid/content/pm/StringParceledListSlice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/pm/StringParceledListSlice$1;

    invoke-direct {v0}, Landroid/content/pm/StringParceledListSlice$1;-><init>()V

    sput-object v0, Landroid/content/pm/StringParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/content/pm/BaseParceledListSlice;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;Landroid/content/pm/StringParceledListSlice;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/content/pm/StringParceledListSlice;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/content/pm/BaseParceledListSlice;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public static emptyList()Landroid/content/pm/StringParceledListSlice;
    .locals 2

    new-instance v0, Landroid/content/pm/StringParceledListSlice;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/pm/StringParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

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

    sget-object v0, Landroid/os/Parcel;->STRING_CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method

.method public bridge synthetic setInlineCountLimit(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/content/pm/BaseParceledListSlice;->setInlineCountLimit(I)V

    return-void
.end method

.method protected bridge synthetic writeElement(Ljava/lang/Object;Landroid/os/Parcel;I)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/StringParceledListSlice;->writeElement(Ljava/lang/String;Landroid/os/Parcel;I)V

    return-void
.end method

.method protected writeElement(Ljava/lang/String;Landroid/os/Parcel;I)V
    .locals 0

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic writeParcelableCreator(Ljava/lang/Object;Landroid/os/Parcel;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/StringParceledListSlice;->writeParcelableCreator(Ljava/lang/String;Landroid/os/Parcel;)V

    return-void
.end method

.method protected writeParcelableCreator(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/content/pm/BaseParceledListSlice;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
