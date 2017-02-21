.class public final Landroid/location/LocationRequest;
.super Ljava/lang/Object;
.source "LocationRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/LocationRequest$1;
    }
.end annotation


# static fields
.field public static final ACCURACY_BLOCK:I = 0x66

.field public static final ACCURACY_CITY:I = 0x68

.field public static final ACCURACY_FINE:I = 0x64

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/location/LocationRequest;",
            ">;"
        }
    .end annotation
.end field

.field private static final FASTEST_INTERVAL_FACTOR:D = 6.0

.field public static final POWER_HIGH:I = 0xcb

.field public static final POWER_LOW:I = 0xc9

.field public static final POWER_NONE:I = 0xc8


# instance fields
.field private mAltitudeRequired:Z

.field private mExpireAt:J

.field private mExplicitFastestInterval:Z

.field private mFastestInterval:J

.field private mHideFromAppOps:Z

.field private mInterval:J

.field private mIsBlacklist:Z

.field private mNumUpdates:I

.field private mProvider:Ljava/lang/String;

.field private mQuality:I

.field private mSmallestDisplacement:F

.field private mWorkSource:Landroid/os/WorkSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/location/LocationRequest$1;

    invoke-direct {v0}, Landroid/location/LocationRequest$1;-><init>()V

    sput-object v0, Landroid/location/LocationRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc9

    iput v0, p0, Landroid/location/LocationRequest;->mQuality:I

    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    iget-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    iput-boolean v4, p0, Landroid/location/LocationRequest;->mExplicitFastestInterval:Z

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/location/LocationRequest;->mExpireAt:J

    const v0, 0x7fffffff

    iput v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    iput-boolean v4, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    const-string/jumbo v0, "fused"

    iput-object v0, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    iput-boolean v4, p0, Landroid/location/LocationRequest;->mAltitudeRequired:Z

    iput-boolean v4, p0, Landroid/location/LocationRequest;->mIsBlacklist:Z

    return-void
.end method

.method public constructor <init>(Landroid/location/LocationRequest;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc9

    iput v0, p0, Landroid/location/LocationRequest;->mQuality:I

    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    iget-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    iput-boolean v4, p0, Landroid/location/LocationRequest;->mExplicitFastestInterval:Z

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/location/LocationRequest;->mExpireAt:J

    const v0, 0x7fffffff

    iput v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    iput-boolean v4, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    const-string/jumbo v0, "fused"

    iput-object v0, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    iput-boolean v4, p0, Landroid/location/LocationRequest;->mAltitudeRequired:Z

    iput-boolean v4, p0, Landroid/location/LocationRequest;->mIsBlacklist:Z

    iget v0, p1, Landroid/location/LocationRequest;->mQuality:I

    iput v0, p0, Landroid/location/LocationRequest;->mQuality:I

    iget-wide v0, p1, Landroid/location/LocationRequest;->mInterval:J

    iput-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    iget-wide v0, p1, Landroid/location/LocationRequest;->mFastestInterval:J

    iput-wide v0, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    iget-boolean v0, p1, Landroid/location/LocationRequest;->mExplicitFastestInterval:Z

    iput-boolean v0, p0, Landroid/location/LocationRequest;->mExplicitFastestInterval:Z

    iget-wide v0, p1, Landroid/location/LocationRequest;->mExpireAt:J

    iput-wide v0, p0, Landroid/location/LocationRequest;->mExpireAt:J

    iget v0, p1, Landroid/location/LocationRequest;->mNumUpdates:I

    iput v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    iget v0, p1, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    iput v0, p0, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    iget-object v0, p1, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    iput-object v0, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    iget-object v0, p1, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    iput-object v0, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    iget-boolean v0, p1, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    iput-boolean v0, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    iget-boolean v0, p1, Landroid/location/LocationRequest;->mAltitudeRequired:Z

    iput-boolean v0, p0, Landroid/location/LocationRequest;->mAltitudeRequired:Z

    iget-boolean v0, p1, Landroid/location/LocationRequest;->mIsBlacklist:Z

    iput-boolean v0, p0, Landroid/location/LocationRequest;->mIsBlacklist:Z

    return-void
.end method

.method private static checkDisplacement(F)V
    .locals 3

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid displacement: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static checkInterval(J)V
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid interval: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static checkProvider(Ljava/lang/String;)V
    .locals 3

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static checkQuality(I)V
    .locals 3

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid quality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x66 -> :sswitch_0
        0x68 -> :sswitch_0
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_0
        0xcb -> :sswitch_0
    .end sparse-switch
.end method

.method public static create()Landroid/location/LocationRequest;
    .locals 1

    new-instance v0, Landroid/location/LocationRequest;

    invoke-direct {v0}, Landroid/location/LocationRequest;-><init>()V

    return-object v0
.end method

.method public static createFromDeprecatedCriteria(Landroid/location/Criteria;JFZ)Landroid/location/LocationRequest;
    .locals 7

    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-gez v3, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    const/4 v3, 0x0

    cmpg-float v3, p3, v3

    if-gez v3, :cond_1

    const/4 p3, 0x0

    :cond_1
    invoke-virtual {p0}, Landroid/location/Criteria;->getAccuracy()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    invoke-virtual {p0}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    const/16 v1, 0xc9

    :goto_0
    invoke-virtual {p0}, Landroid/location/Criteria;->isAltitudeRequired()Z

    move-result v0

    new-instance v3, Landroid/location/LocationRequest;

    invoke-direct {v3}, Landroid/location/LocationRequest;-><init>()V

    invoke-virtual {v3, v1}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    move-result-object v3

    invoke-virtual {v3, p3}, Landroid/location/LocationRequest;->setSmallestDisplacement(F)Landroid/location/LocationRequest;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/location/LocationRequest;->setAltitudeRequired(Z)Landroid/location/LocationRequest;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/location/LocationRequest;->setIsBlacklist(Z)Landroid/location/LocationRequest;

    move-result-object v2

    if-eqz p4, :cond_2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/location/LocationRequest;->setNumUpdates(I)Landroid/location/LocationRequest;

    :cond_2
    return-object v2

    :pswitch_0
    const/16 v1, 0x66

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x64

    goto :goto_0

    :pswitch_2
    const/16 v1, 0xcb

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_2
    .end packed-switch
.end method

.method public static createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;
    .locals 5

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    const/4 v2, 0x0

    cmpg-float v2, p3, v2

    if-gez v2, :cond_1

    const/4 p3, 0x0

    :cond_1
    const-string/jumbo v2, "passive"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v0, 0xc8

    :goto_0
    new-instance v2, Landroid/location/LocationRequest;

    invoke-direct {v2}, Landroid/location/LocationRequest;-><init>()V

    invoke-virtual {v2, p0}, Landroid/location/LocationRequest;->setProvider(Ljava/lang/String;)Landroid/location/LocationRequest;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/location/LocationRequest;->setQuality(I)Landroid/location/LocationRequest;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/location/LocationRequest;->setInterval(J)Landroid/location/LocationRequest;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/location/LocationRequest;->setFastestInterval(J)Landroid/location/LocationRequest;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/location/LocationRequest;->setSmallestDisplacement(F)Landroid/location/LocationRequest;

    move-result-object v1

    if-eqz p4, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/location/LocationRequest;->setNumUpdates(I)Landroid/location/LocationRequest;

    :cond_2
    return-object v1

    :cond_3
    const-string/jumbo v2, "gps"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v0, 0x64

    goto :goto_0

    :cond_4
    const/16 v0, 0xc9

    goto :goto_0
.end method

.method public static qualityToString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const-string/jumbo v0, "???"

    return-object v0

    :sswitch_0
    const-string/jumbo v0, "ACCURACY_FINE"

    return-object v0

    :sswitch_1
    const-string/jumbo v0, "ACCURACY_BLOCK"

    return-object v0

    :sswitch_2
    const-string/jumbo v0, "ACCURACY_CITY"

    return-object v0

    :sswitch_3
    const-string/jumbo v0, "POWER_NONE"

    return-object v0

    :sswitch_4
    const-string/jumbo v0, "POWER_LOW"

    return-object v0

    :sswitch_5
    const-string/jumbo v0, "POWER_HIGH"

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x66 -> :sswitch_1
        0x68 -> :sswitch_2
        0xc8 -> :sswitch_3
        0xc9 -> :sswitch_4
        0xcb -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public decrementNumUpdates()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    :cond_0
    iget v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    if-gez v0, :cond_1

    iput v2, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    :cond_1
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAltitudeRequired()Z
    .locals 1

    iget-boolean v0, p0, Landroid/location/LocationRequest;->mAltitudeRequired:Z

    return v0
.end method

.method public getExpireAt()J
    .locals 2

    iget-wide v0, p0, Landroid/location/LocationRequest;->mExpireAt:J

    return-wide v0
.end method

.method public getFastestInterval()J
    .locals 2

    iget-wide v0, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    return-wide v0
.end method

.method public getHideFromAppOps()Z
    .locals 1

    iget-boolean v0, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    return v0
.end method

.method public getInterval()J
    .locals 2

    iget-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    return-wide v0
.end method

.method public getIsBlacklist()Z
    .locals 1

    iget-boolean v0, p0, Landroid/location/LocationRequest;->mIsBlacklist:Z

    return v0
.end method

.method public getNumUpdates()I
    .locals 1

    iget v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    return v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getQuality()I
    .locals 1

    iget v0, p0, Landroid/location/LocationRequest;->mQuality:I

    return v0
.end method

.method public getSmallestDisplacement()F
    .locals 1

    iget v0, p0, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    return v0
.end method

.method public getWorkSource()Landroid/os/WorkSource;
    .locals 1

    iget-object v0, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method public setAltitudeRequired(Z)Landroid/location/LocationRequest;
    .locals 0

    iput-boolean p1, p0, Landroid/location/LocationRequest;->mAltitudeRequired:Z

    return-object p0
.end method

.method public setExpireAt(J)Landroid/location/LocationRequest;
    .locals 5

    const-wide/16 v2, 0x0

    iput-wide p1, p0, Landroid/location/LocationRequest;->mExpireAt:J

    iget-wide v0, p0, Landroid/location/LocationRequest;->mExpireAt:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iput-wide v2, p0, Landroid/location/LocationRequest;->mExpireAt:J

    :cond_0
    return-object p0
.end method

.method public setExpireIn(J)Landroid/location/LocationRequest;
    .locals 9

    const-wide v6, 0x7fffffffffffffffL

    const-wide/16 v4, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v2, v6, v0

    cmp-long v2, p1, v2

    if-lez v2, :cond_1

    iput-wide v6, p0, Landroid/location/LocationRequest;->mExpireAt:J

    :goto_0
    iget-wide v2, p0, Landroid/location/LocationRequest;->mExpireAt:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    iput-wide v4, p0, Landroid/location/LocationRequest;->mExpireAt:J

    :cond_0
    return-object p0

    :cond_1
    add-long v2, p1, v0

    iput-wide v2, p0, Landroid/location/LocationRequest;->mExpireAt:J

    goto :goto_0
.end method

.method public setFastestInterval(J)Landroid/location/LocationRequest;
    .locals 1

    invoke-static {p1, p2}, Landroid/location/LocationRequest;->checkInterval(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/location/LocationRequest;->mExplicitFastestInterval:Z

    iput-wide p1, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    return-object p0
.end method

.method public setHideFromAppOps(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    return-void
.end method

.method public setInterval(J)Landroid/location/LocationRequest;
    .locals 5

    invoke-static {p1, p2}, Landroid/location/LocationRequest;->checkInterval(J)V

    iput-wide p1, p0, Landroid/location/LocationRequest;->mInterval:J

    iget-boolean v0, p0, Landroid/location/LocationRequest;->mExplicitFastestInterval:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/location/LocationRequest;->mInterval:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    :cond_0
    return-object p0
.end method

.method public setIsBlacklist(Z)Landroid/location/LocationRequest;
    .locals 0

    iput-boolean p1, p0, Landroid/location/LocationRequest;->mIsBlacklist:Z

    return-object p0
.end method

.method public setNumUpdates(I)Landroid/location/LocationRequest;
    .locals 3

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid numUpdates: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    return-object p0
.end method

.method public setProvider(Ljava/lang/String;)Landroid/location/LocationRequest;
    .locals 0

    invoke-static {p1}, Landroid/location/LocationRequest;->checkProvider(Ljava/lang/String;)V

    iput-object p1, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    return-object p0
.end method

.method public setQuality(I)Landroid/location/LocationRequest;
    .locals 0

    invoke-static {p1}, Landroid/location/LocationRequest;->checkQuality(I)V

    iput p1, p0, Landroid/location/LocationRequest;->mQuality:I

    return-object p0
.end method

.method public setSmallestDisplacement(F)Landroid/location/LocationRequest;
    .locals 0

    invoke-static {p1}, Landroid/location/LocationRequest;->checkDisplacement(F)V

    iput p1, p0, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    return-object p0
.end method

.method public setWorkSource(Landroid/os/WorkSource;)V
    .locals 0

    iput-object p1, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Request["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/location/LocationRequest;->mQuality:I

    invoke-static {v4}, Landroid/location/LocationRequest;->qualityToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    if-eqz v3, :cond_0

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget v3, p0, Landroid/location/LocationRequest;->mQuality:I

    const/16 v4, 0xc8

    if-eq v3, v4, :cond_1

    const-string/jumbo v3, " requested="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Landroid/location/LocationRequest;->mInterval:J

    invoke-static {v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    :cond_1
    const-string/jumbo v3, " fastest="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    invoke-static {v4, v5, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    iget-wide v4, p0, Landroid/location/LocationRequest;->mExpireAt:J

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    iget-wide v4, p0, Landroid/location/LocationRequest;->mExpireAt:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v0, v4, v6

    const-string/jumbo v3, " expireIn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    :cond_2
    iget v3, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    const v4, 0x7fffffff

    if-eq v3, v4, :cond_3

    const-string/jumbo v3, " num="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Landroid/location/LocationRequest;->mQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v4, p0, Landroid/location/LocationRequest;->mFastestInterval:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v4, p0, Landroid/location/LocationRequest;->mInterval:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v4, p0, Landroid/location/LocationRequest;->mExpireAt:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    iget v0, p0, Landroid/location/LocationRequest;->mNumUpdates:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/location/LocationRequest;->mSmallestDisplacement:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean v0, p0, Landroid/location/LocationRequest;->mHideFromAppOps:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/location/LocationRequest;->mAltitudeRequired:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/location/LocationRequest;->mIsBlacklist:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/location/LocationRequest;->mProvider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/location/LocationRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method
