.class public Landroid/media/browse/MediaBrowser$MediaItem;
.super Ljava/lang/Object;
.source "MediaBrowser.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/browse/MediaBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/browse/MediaBrowser$MediaItem$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/media/browse/MediaBrowser$MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final FLAG_BROWSABLE:I = 0x1

.field public static final FLAG_PLAYABLE:I = 0x2


# instance fields
.field private final mDescription:Landroid/media/MediaDescription;

.field private final mFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 782
    new-instance v0, Landroid/media/browse/MediaBrowser$MediaItem$1;

    invoke-direct {v0}, Landroid/media/browse/MediaBrowser$MediaItem$1;-><init>()V

    .line 781
    sput-object v0, Landroid/media/browse/MediaBrowser$MediaItem;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 712
    return-void
.end method

.method public constructor <init>(Landroid/media/MediaDescription;I)V
    .locals 2
    .param p1, "description"    # Landroid/media/MediaDescription;
    .param p2, "flags"    # I

    .prologue
    .line 742
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 743
    if-nez p1, :cond_0

    .line 744
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "description cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 746
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaDescription;->getMediaId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 747
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "description must have a non-empty media id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 749
    :cond_1
    iput p2, p0, Landroid/media/browse/MediaBrowser$MediaItem;->mFlags:I

    .line 750
    iput-object p1, p0, Landroid/media/browse/MediaBrowser$MediaItem;->mDescription:Landroid/media/MediaDescription;

    .line 742
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 756
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 757
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/media/browse/MediaBrowser$MediaItem;->mFlags:I

    .line 758
    sget-object v0, Landroid/media/MediaDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaDescription;

    iput-object v0, p0, Landroid/media/browse/MediaBrowser$MediaItem;->mDescription:Landroid/media/MediaDescription;

    .line 756
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/browse/MediaBrowser$MediaItem;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Landroid/media/browse/MediaBrowser$MediaItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 763
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Landroid/media/MediaDescription;
    .locals 1

    .prologue
    .line 821
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaItem;->mDescription:Landroid/media/MediaDescription;

    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .prologue
    .line 798
    iget v0, p0, Landroid/media/browse/MediaBrowser$MediaItem;->mFlags:I

    return v0
.end method

.method public getMediaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaItem;->mDescription:Landroid/media/MediaDescription;

    invoke-virtual {v0}, Landroid/media/MediaDescription;->getMediaId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBrowsable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 806
    iget v1, p0, Landroid/media/browse/MediaBrowser$MediaItem;->mFlags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isPlayable()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 814
    iget v1, p0, Landroid/media/browse/MediaBrowser$MediaItem;->mFlags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 774
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "MediaItem{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 775
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "mFlags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/browse/MediaBrowser$MediaItem;->mFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 776
    const-string/jumbo v1, ", mDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/browse/MediaBrowser$MediaItem;->mDescription:Landroid/media/MediaDescription;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 777
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 778
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 768
    iget v0, p0, Landroid/media/browse/MediaBrowser$MediaItem;->mFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 769
    iget-object v0, p0, Landroid/media/browse/MediaBrowser$MediaItem;->mDescription:Landroid/media/MediaDescription;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaDescription;->writeToParcel(Landroid/os/Parcel;I)V

    .line 767
    return-void
.end method
