.class public final Landroid/support/v4/media/RatingCompat;
.super Ljava/lang/Object;
.source "RatingCompat.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/RatingCompat$1;,
        Landroid/support/v4/media/RatingCompat$StarStyle;,
        Landroid/support/v4/media/RatingCompat$Style;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/media/RatingCompat;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mRatingObj:Ljava/lang/Object;

.field private final mRatingStyle:I

.field private final mRatingValue:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/support/v4/media/RatingCompat$1;

    invoke-direct {v0}, Landroid/support/v4/media/RatingCompat$1;-><init>()V

    sput-object v0, Landroid/support/v4/media/RatingCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    iput p2, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    return-void
.end method

.method public static fromRating(Ljava/lang/Object;)Landroid/support/v4/media/RatingCompat;
    .locals 5

    const/4 v4, 0x0

    if-eqz p0, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    invoke-static {p0}, Landroid/support/v4/media/RatingCompatKitkat;->getRatingStyle(Ljava/lang/Object;)I

    move-result v1

    invoke-static {p0}, Landroid/support/v4/media/RatingCompatKitkat;->isRated(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    packed-switch v1, :pswitch_data_0

    return-object v4

    :pswitch_0
    invoke-static {p0}, Landroid/support/v4/media/RatingCompatKitkat;->hasHeart(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Landroid/support/v4/media/RatingCompat;->newHeartRating(Z)Landroid/support/v4/media/RatingCompat;

    move-result-object v0

    :goto_0
    iput-object p0, v0, Landroid/support/v4/media/RatingCompat;->mRatingObj:Ljava/lang/Object;

    return-object v0

    :pswitch_1
    invoke-static {p0}, Landroid/support/v4/media/RatingCompatKitkat;->isThumbUp(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Landroid/support/v4/media/RatingCompat;->newThumbRating(Z)Landroid/support/v4/media/RatingCompat;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-static {p0}, Landroid/support/v4/media/RatingCompatKitkat;->getStarRating(Ljava/lang/Object;)F

    move-result v2

    invoke-static {v1, v2}, Landroid/support/v4/media/RatingCompat;->newStarRating(IF)Landroid/support/v4/media/RatingCompat;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-static {p0}, Landroid/support/v4/media/RatingCompatKitkat;->getPercentRating(Ljava/lang/Object;)F

    move-result v2

    invoke-static {v2}, Landroid/support/v4/media/RatingCompat;->newPercentageRating(F)Landroid/support/v4/media/RatingCompat;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroid/support/v4/media/RatingCompat;->newUnratedRating(I)Landroid/support/v4/media/RatingCompat;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static newHeartRating(Z)Landroid/support/v4/media/RatingCompat;
    .locals 3

    new-instance v1, Landroid/support/v4/media/RatingCompat;

    if-eqz p0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    const/4 v2, 0x1

    invoke-direct {v1, v2, v0}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newPercentageRating(F)Landroid/support/v4/media/RatingCompat;
    .locals 2

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "Rating"

    const-string/jumbo v1, "Invalid percentage-based rating value"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_1
    new-instance v0, Landroid/support/v4/media/RatingCompat;

    const/4 v1, 0x6

    invoke-direct {v0, v1, p0}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    return-object v0
.end method

.method public static newStarRating(IF)Landroid/support/v4/media/RatingCompat;
    .locals 5

    const/4 v4, 0x0

    const/high16 v0, -0x40800000    # -1.0f

    packed-switch p0, :pswitch_data_0

    const-string/jumbo v1, "Rating"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid rating style ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") for a star rating"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :pswitch_0
    const/high16 v0, 0x40400000    # 3.0f

    :goto_0
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_0

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    :cond_0
    const-string/jumbo v1, "Rating"

    const-string/jumbo v2, "Trying to set out of range star-based rating"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :pswitch_1
    const/high16 v0, 0x40800000    # 4.0f

    goto :goto_0

    :pswitch_2
    const/high16 v0, 0x40a00000    # 5.0f

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/support/v4/media/RatingCompat;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static newThumbRating(Z)Landroid/support/v4/media/RatingCompat;
    .locals 3

    new-instance v1, Landroid/support/v4/media/RatingCompat;

    if-eqz p0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    const/4 v2, 0x2

    invoke-direct {v1, v2, v0}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newUnratedRating(I)Landroid/support/v4/media/RatingCompat;
    .locals 2

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    new-instance v0, Landroid/support/v4/media/RatingCompat;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-direct {v0, p0, v1}, Landroid/support/v4/media/RatingCompat;-><init>(IF)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Rating:style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " rating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    const-string/jumbo v0, "unrated"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingStyle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/support/v4/media/RatingCompat;->mRatingValue:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
