.class public final Landroid/app/PictureInPictureArgs;
.super Ljava/lang/Object;
.source "PictureInPictureArgs.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/PictureInPictureArgs$1;,
        Landroid/app/PictureInPictureArgs$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/PictureInPictureArgs;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAspectRatio:Landroid/util/Rational;

.field private mSourceRectHint:Landroid/graphics/Rect;

.field private mSourceRectHintInsets:Landroid/graphics/Rect;

.field private mUserActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/PictureInPictureArgs$1;

    invoke-direct {v0}, Landroid/app/PictureInPictureArgs$1;-><init>()V

    sput-object v0, Landroid/app/PictureInPictureArgs;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List",
            "<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/app/PictureInPictureArgs;->setAspectRatio(F)V

    invoke-virtual {p0, p2}, Landroid/app/PictureInPictureArgs;->setActions(Ljava/util/List;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/util/Rational;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Rational;-><init>(II)V

    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    const-class v1, Landroid/app/RemoteAction;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelableList(Ljava/util/List;Ljava/lang/ClassLoader;)Ljava/util/List;

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHint:Landroid/graphics/Rect;

    :cond_2
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/PictureInPictureArgs;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/PictureInPictureArgs;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/util/Rational;Ljava/util/List;Landroid/graphics/Rect;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Rational;",
            "Ljava/util/List",
            "<",
            "Landroid/app/RemoteAction;",
            ">;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    iput-object p2, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    iput-object p3, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHint:Landroid/graphics/Rect;

    return-void
.end method

.method synthetic constructor <init>(Landroid/util/Rational;Ljava/util/List;Landroid/graphics/Rect;Landroid/app/PictureInPictureArgs;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/app/PictureInPictureArgs;-><init>(Landroid/util/Rational;Ljava/util/List;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static convert(Landroid/app/PictureInPictureParams;)Landroid/app/PictureInPictureArgs;
    .locals 4

    new-instance v0, Landroid/app/PictureInPictureArgs;

    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->getAspectRatioRational()Landroid/util/Rational;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->getActions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/PictureInPictureParams;->getSourceRectHint()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/PictureInPictureArgs;-><init>(Landroid/util/Rational;Ljava/util/List;Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public static convert(Landroid/app/PictureInPictureArgs;)Landroid/app/PictureInPictureParams;
    .locals 4

    new-instance v0, Landroid/app/PictureInPictureParams;

    invoke-virtual {p0}, Landroid/app/PictureInPictureArgs;->getAspectRatioRational()Landroid/util/Rational;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/PictureInPictureArgs;->getActions()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/PictureInPictureArgs;->getSourceRectHint()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/PictureInPictureParams;-><init>(Landroid/util/Rational;Ljava/util/List;Landroid/graphics/Rect;)V

    return-object v0
.end method


# virtual methods
.method public copyOnlySet(Landroid/app/PictureInPictureArgs;)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/PictureInPictureArgs;->hasSetAspectRatio()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    :cond_0
    invoke-virtual {p1}, Landroid/app/PictureInPictureArgs;->hasSetActions()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    :cond_1
    invoke-virtual {p1}, Landroid/app/PictureInPictureArgs;->hasSourceBoundsHint()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/app/PictureInPictureArgs;->getSourceRectHint()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHint:Landroid/graphics/Rect;

    :cond_2
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    return-object v0
.end method

.method public getAspectRatio()F
    .locals 1

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    invoke-virtual {v0}, Landroid/util/Rational;->floatValue()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAspectRatioRational()Landroid/util/Rational;
    .locals 1

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    return-object v0
.end method

.method public getSourceRectHint()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHint:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getSourceRectHintInsets()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHintInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public hasSetActions()Z
    .locals 1

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSetAspectRatio()Z
    .locals 1

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSourceBoundsHint()Z
    .locals 1

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHint:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHint:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSourceBoundsHintInsets()Z
    .locals 1

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHintInsets:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActions(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/RemoteAction;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    if-eqz v0, :cond_0

    iput-object v1, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    :cond_0
    if-eqz p1, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    :cond_1
    return-void
.end method

.method public setAspectRatio(F)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/util/Rational;

    const v1, 0x4e6e6b28    # 1.0E9f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    const v2, 0x3b9aca00

    invoke-direct {v0, v1, v2}, Landroid/util/Rational;-><init>(II)V

    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    return-void
.end method

.method public setSourceRectHint(Landroid/graphics/Rect;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHint:Landroid/graphics/Rect;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHint:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public setSourceRectHintInsets(Landroid/graphics/Rect;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHintInsets:Landroid/graphics/Rect;

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHintInsets:Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public truncateActions(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/PictureInPictureArgs;->hasSetActions()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    iget-object v1, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    invoke-virtual {v0}, Landroid/util/Rational;->getNumerator()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mAspectRatio:Landroid/util/Rational;

    invoke-virtual {v0}, Landroid/util/Rational;->getDenominator()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mUserActions:Ljava/util/List;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelableList(Ljava/util/List;I)V

    :goto_1
    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHint:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/PictureInPictureArgs;->mSourceRectHint:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_2
    return-void

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2
.end method
