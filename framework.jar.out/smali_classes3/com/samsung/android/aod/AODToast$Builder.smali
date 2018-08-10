.class public Lcom/samsung/android/aod/AODToast$Builder;
.super Ljava/lang/Object;
.source "AODToast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/aod/AODToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mDuration:I

.field private mDurationMillis:J

.field private mGravity:I

.field private mHorizontalMargin:F

.field private final mText:Ljava/lang/String;

.field private mVerticalMargin:F

.field private mX:I

.field private mY:I


# direct methods
.method static synthetic -get0(Lcom/samsung/android/aod/AODToast$Builder;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/aod/AODToast$Builder;->mDuration:I

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/aod/AODToast$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/aod/AODToast$Builder;->mDurationMillis:J

    return-wide v0
.end method

.method static synthetic -get2(Lcom/samsung/android/aod/AODToast$Builder;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/aod/AODToast$Builder;->mGravity:I

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/aod/AODToast$Builder;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/aod/AODToast$Builder;->mHorizontalMargin:F

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/aod/AODToast$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/aod/AODToast$Builder;->mText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/aod/AODToast$Builder;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/aod/AODToast$Builder;->mVerticalMargin:F

    return v0
.end method

.method static synthetic -get6(Lcom/samsung/android/aod/AODToast$Builder;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/aod/AODToast$Builder;->mX:I

    return v0
.end method

.method static synthetic -get7(Lcom/samsung/android/aod/AODToast$Builder;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/aod/AODToast$Builder;->mY:I

    return v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/aod/AODToast$Builder;->mText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/aod/AODToast;
    .locals 2

    new-instance v0, Lcom/samsung/android/aod/AODToast;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/aod/AODToast;-><init>(Lcom/samsung/android/aod/AODToast$Builder;Lcom/samsung/android/aod/AODToast;)V

    return-object v0
.end method

.method public setDuration(I)Lcom/samsung/android/aod/AODToast$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/aod/AODToast$Builder;->mDuration:I

    return-object p0
.end method

.method public setDurationInMillis(J)Lcom/samsung/android/aod/AODToast$Builder;
    .locals 1

    iput-wide p1, p0, Lcom/samsung/android/aod/AODToast$Builder;->mDurationMillis:J

    return-object p0
.end method

.method public setGravity(III)Lcom/samsung/android/aod/AODToast$Builder;
    .locals 0

    iput p1, p0, Lcom/samsung/android/aod/AODToast$Builder;->mGravity:I

    iput p2, p0, Lcom/samsung/android/aod/AODToast$Builder;->mX:I

    iput p3, p0, Lcom/samsung/android/aod/AODToast$Builder;->mY:I

    return-object p0
.end method

.method public setMargin(FF)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/aod/AODToast$Builder;->mHorizontalMargin:F

    iput p2, p0, Lcom/samsung/android/aod/AODToast$Builder;->mVerticalMargin:F

    return-void
.end method
