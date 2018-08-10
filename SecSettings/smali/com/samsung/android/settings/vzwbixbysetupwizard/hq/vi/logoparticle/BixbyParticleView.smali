.class public Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;
.super Landroid/widget/RelativeLayout;
.source "BixbyParticleView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView$WeakRefHandler;
    }
.end annotation


# instance fields
.field private VELOCITY_COMPLETE_BASIC:F

.field private isClearView:Z

.field public mAlphas:[[I

.field public mAlphas_1:[I

.field public mAlphas_2:[I

.field public mAlphas_3:[I

.field public mAlphas_4:[I

.field public mAlphas_5:[I

.field public mAlphas_6:[I

.field public mAlphas_7:[I

.field public mAngles:[[D

.field public mAngles_1:[D

.field public mAngles_2:[D

.field public mAngles_3:[D

.field public mAngles_4:[D

.field public mAngles_5:[D

.field public mAngles_6:[D

.field public mAngles_7:[D

.field private mDecibel:F

.field private mDirectionCnt:I

.field private mGooeyPath:Landroid/graphics/Path;

.field public mInitSizes:[[D

.field public mInitSizes_1:[D

.field public mInitSizes_2:[D

.field public mInitSizes_3:[D

.field public mInitSizes_4:[D

.field public mInitSizes_5:[D

.field public mInitSizes_6:[D

.field public mInitSizes_7:[D

.field public mIsMetaballs:[[Z

.field public mIsMetaballs_1:[Z

.field public mIsMetaballs_2:[Z

.field public mIsMetaballs_3:[Z

.field public mIsMetaballs_4:[Z

.field public mIsMetaballs_5:[Z

.field public mIsMetaballs_6:[Z

.field public mIsMetaballs_7:[Z

.field public mLifeTimes:[[D

.field public mLifeTimes_1:[D

.field public mLifeTimes_2:[D

.field public mLifeTimes_3:[D

.field public mLifeTimes_4:[D

.field public mLifeTimes_5:[D

.field public mLifeTimes_6:[D

.field public mLifeTimes_7:[D

.field private mLogoView:Landroid/widget/FrameLayout;

.field private mParticlePerSec:F

.field private final mParticleTickHandler:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView$WeakRefHandler;

.field public mSizes:[[D

.field public mSizes_1:[D

.field public mSizes_2:[D

.field public mSizes_3:[D

.field public mSizes_4:[D

.field public mSizes_5:[D

.field public mSizes_6:[D

.field public mSizes_7:[D

.field private mSmallBalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;",
            ">;"
        }
    .end annotation
.end field

.field public mVelocities:[[D

.field public mVelocities_1:[D

.field public mVelocities_2:[D

.field public mVelocities_3:[D

.field public mVelocities_4:[D

.field public mVelocities_5:[D

.field public mVelocities_6:[D

.field public mVelocities_7:[D


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLogoView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x15

    const/16 v1, 0x14

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x43340000    # 180.0f

    iput v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->VELOCITY_COMPLETE_BASIC:F

    const v0, 0x404ccccd    # 3.2f

    iput v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mParticlePerSec:F

    iput v3, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mDirectionCnt:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mDecibel:F

    new-array v0, v1, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_1:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_1:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_1:[D

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_1:[I

    new-array v0, v1, [D

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_1:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_1:[D

    new-array v0, v1, [Z

    fill-array-data v0, :array_6

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_1:[Z

    new-array v0, v1, [D

    fill-array-data v0, :array_7

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_2:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_8

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_2:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_9

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_2:[D

    new-array v0, v1, [I

    fill-array-data v0, :array_a

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_2:[I

    new-array v0, v1, [D

    fill-array-data v0, :array_b

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_2:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_c

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_2:[D

    new-array v0, v1, [Z

    fill-array-data v0, :array_d

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_2:[Z

    new-array v0, v1, [D

    fill-array-data v0, :array_e

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_3:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_f

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_3:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_10

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_3:[D

    new-array v0, v1, [I

    fill-array-data v0, :array_11

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_3:[I

    new-array v0, v1, [D

    fill-array-data v0, :array_12

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_3:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_13

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_3:[D

    new-array v0, v1, [Z

    fill-array-data v0, :array_14

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_3:[Z

    new-array v0, v1, [D

    fill-array-data v0, :array_15

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_4:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_16

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_4:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_17

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_4:[D

    new-array v0, v1, [I

    fill-array-data v0, :array_18

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_4:[I

    new-array v0, v1, [D

    fill-array-data v0, :array_19

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_4:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_1a

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_4:[D

    new-array v0, v1, [Z

    fill-array-data v0, :array_1b

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_4:[Z

    new-array v0, v1, [D

    fill-array-data v0, :array_1c

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_5:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_1d

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_5:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_1e

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_5:[D

    new-array v0, v1, [I

    fill-array-data v0, :array_1f

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_5:[I

    new-array v0, v1, [D

    fill-array-data v0, :array_20

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_5:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_21

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_5:[D

    new-array v0, v1, [Z

    fill-array-data v0, :array_22

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_5:[Z

    new-array v0, v2, [D

    fill-array-data v0, :array_23

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_6:[D

    new-array v0, v2, [D

    fill-array-data v0, :array_24

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_6:[D

    new-array v0, v2, [D

    fill-array-data v0, :array_25

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_6:[D

    new-array v0, v2, [I

    fill-array-data v0, :array_26

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_6:[I

    new-array v0, v2, [D

    fill-array-data v0, :array_27

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_6:[D

    new-array v0, v2, [D

    fill-array-data v0, :array_28

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_6:[D

    new-array v0, v2, [Z

    fill-array-data v0, :array_29

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_6:[Z

    new-array v0, v2, [D

    fill-array-data v0, :array_2a

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_7:[D

    new-array v0, v2, [D

    fill-array-data v0, :array_2b

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_7:[D

    new-array v0, v2, [D

    fill-array-data v0, :array_2c

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_7:[D

    new-array v0, v2, [I

    fill-array-data v0, :array_2d

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_7:[I

    new-array v0, v2, [D

    fill-array-data v0, :array_2e

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_7:[D

    new-array v0, v2, [D

    fill-array-data v0, :array_2f

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_7:[D

    new-array v0, v2, [Z

    fill-array-data v0, :array_30

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_7:[Z

    const/4 v0, 0x7

    new-array v0, v0, [[D

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_1:[D

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_2:[D

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_3:[D

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_4:[D

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_5:[D

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_6:[D

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_7:[D

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes:[[D

    const/4 v0, 0x7

    new-array v0, v0, [[D

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_1:[D

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_2:[D

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_3:[D

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_4:[D

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_5:[D

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_6:[D

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_7:[D

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities:[[D

    const/4 v0, 0x7

    new-array v0, v0, [[D

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_1:[D

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_2:[D

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_3:[D

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_4:[D

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_5:[D

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_6:[D

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_7:[D

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles:[[D

    const/4 v0, 0x7

    new-array v0, v0, [[I

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_1:[I

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_2:[I

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_3:[I

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_4:[I

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_5:[I

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_6:[I

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_7:[I

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas:[[I

    const/4 v0, 0x7

    new-array v0, v0, [[D

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_1:[D

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_2:[D

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_3:[D

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_4:[D

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_5:[D

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_6:[D

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_7:[D

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes:[[D

    const/4 v0, 0x7

    new-array v0, v0, [[D

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_1:[D

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_2:[D

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_3:[D

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_4:[D

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_5:[D

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_6:[D

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_7:[D

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes:[[D

    const/4 v0, 0x7

    new-array v0, v0, [[Z

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_1:[Z

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_2:[Z

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_3:[Z

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_4:[Z

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_5:[Z

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_6:[Z

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_7:[Z

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs:[[Z

    iput-boolean v3, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->isClearView:Z

    new-instance v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView$WeakRefHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView$WeakRefHandler;-><init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mParticleTickHandler:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView$WeakRefHandler;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->init(Landroid/content/Context;)V

    return-void

    nop

    :array_0
    .array-data 8
        0x40a1c62ac083126fL    # 2275.0835
        0x40a61a3c432ca57aL    # 2829.1177
        0x40a7423b7e90ff97L    # 2977.1162
        0x40a1c99edfa43fe6L    # 2276.8103
        0x40a207cb43958106L    # 2307.897
        0x40a3e6643fe5c91dL    # 2547.1958
        0x4098b7dd495182aaL    # 1581.9661
        0x409ab6eb1c432ca5L    # 1709.7296
        0x409352ac3c9eecc0L    # 1236.6682
        0x409eb2e6b50b0f28L    # 1964.7253
        0x40a1d2dcac083127L    # 2281.431
        0x409d79444d013a93L    # 1886.3167
        0x40a06c0189374bc7L    # 2102.003
        0x40a5e3ee147ae148L    # 2801.965
        0x409b3fae7d566cf4L    # 1743.9204
        0x40a46a21a36e2eb2L    # 2613.0657
        0x409d8d09ba5e353fL    # 1891.2595
        0x40953938bac710cbL    # 1358.3054
        0x40a53a4ca57a786cL    # 2717.1497
        0x40a5d6ca2339c0ecL    # 2795.3948
    .end array-data

    :array_1
    .array-data 8
        0x40721cafb7e90ff9L    # 289.7929
        0x4072167640639d5eL    # 289.40387
        0x406a1df1e8e60807L    # 208.93578
        0x407ae0b39c0ebee0L    # 430.04385
        0x40737450b0f27bb3L    # 311.2697
        0x40686483f91e646fL    # 195.14111
        0x406a4318e757928eL    # 210.09679
        0x407372089a027525L    # 311.1271
        0x406a1c8769ec2ce4L    # 208.89153
        0x4075a97ee4e26d48L    # 346.59348
        0x40740acd013a92a3L    # 320.67505
        0x40694f1bc5586445L    # 202.47214
        0x407c384cc2507208L    # 451.51874
        0x40731f2e9ccb7d41L    # 305.94888
        0x40758b90e0221427L    # 344.72287
        0x4074ca6872b020c5L    # 332.6505
        0x4070a04bdba0a527L    # 266.01852
        0x4075f722bbecaab9L    # 351.44598
        0x406abc432ca57a78L    # 213.8832
        0x407552ecfe9b7bf2L    # 341.18286
    .end array-data

    :array_2
    .array-data 8
        -0x3fc052277c45cbbcL    # -31.679085
        -0x3fc405b738e6d15bL    # -27.977673
        -0x3fb32fdcdf698783L    # -57.626072
        -0x3fa85cd5cfaacd9fL    # -94.54945
        -0x3fa11c2a9930be0eL    # -123.5599
        -0x3f9d519fe86833c6L    # -149.44923
        -0x3fc30350e3476295L    # -28.987047
        -0x3fc1706c97d8cf3aL    # -30.560843
        -0x3fc0bc97fa5d28d0L    # -31.263306
        -0x3fb24d7be121ee67L    # -59.394657
        -0x3fb3dccaff6d3309L    # -56.275055
        -0x3faff1dc1e7967cbL    # -64.22094
        -0x3fa86dc6d1e108c4L    # -94.28474
        -0x3fa9d2cbd1244a62L    # -88.70631
        -0x3fa841ddc1e7967dL    # -94.97084
        -0x3fa212a10e022142L    # -119.70892
        -0x3fa1d7e2046c764bL    # -120.62683
        -0x3fa28c2949a56580L    # -117.80998
        -0x3f9dbfbda5119ce0L    # -146.0081
        -0x3f9cdecce1c58256L    # -153.03749
    .end array-data

    :array_3
    .array-data 4
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0x78
        0x86
        0x6e
        0xbf
        0x7f
        0x86
        0x6e
        0x6f
        0x6d
        0x6e
        0x4f
        0x73
        0x6a
        0x7a
    .end array-data

    :array_4
    .array-data 8
        0x402c362bae03b3eaL    # 14.105802
        0x403097ba450acc0cL    # 16.592686
        0x40429514c22ee419L    # 37.164696
        0x4033150d0678c005L    # 19.08223
        0x4041ab23033a4724L    # 35.337006
        0x404013bfc6540cc8L    # 32.15429
        0x402efc0d90e23af3L    # 15.492291
        0x4039239a5a89b952L    # 25.139074
        0x40323ff705857affL    # 18.249863
        0x403f5ae5ffa3b9aeL    # 31.355072
        0x4037c69707182236L    # 23.775742
        0x403461c842fa5094L    # 20.381962
        0x4040c416f0068db9L    # 33.53195
        0x4035d0f7b9e060feL    # 21.81628
        0x40339e40420f6f09L    # 19.618168
        0x40305d4c22ee4192L    # 16.364443
        0x4035fc8a9bcfd4bfL    # 21.98649
        0x402fd03dbc23315dL    # 15.906721
        0x40404eff7dfa00e2L    # 32.617172
        0x402f30a6b93ccd10L    # 15.595022
    .end array-data

    :array_5
    .array-data 8
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
    .end array-data

    :array_6
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_7
    .array-data 8
        0x40a4119bc01a36e3L    # 2568.8042
        0x4093471b3d07c84bL    # 1233.7766
        0x40a897307c84b5ddL    # 3147.5947
        0x4096f08346dc5d64L    # 1468.1282
        0x40a1c684c2f837b5L    # 2275.2593
        0x40a3501ce075f6fdL    # 2472.0564
        0x409efaa809d49518L    # 1982.6641
        0x40a74ee0c49ba5e3L    # 2983.439
        0x40a317fdd97f62b7L    # 2443.9958
        0x40a4b19559b3d07dL    # 2648.7917
        0x40a411ed5cfaacdaL    # 2568.9636
        0x4091b101205bc01aL    # 1132.2511
        0x40a2df463f141206L    # 2415.6372
        0x40915633b645a1cbL    # 1109.5505
        0x40a8e407ae147ae1L    # 3186.015
        0x40a013463f141206L    # 2057.6372
        0x40a3d4205bc01a37L    # 2538.0632
        0x40a5cbc779a6b50bL    # 2789.8896
        0x409988ea161e4f76L    # 1634.2286
        0x409d8eafb7e90ff9L    # 1891.6716
    .end array-data

    :array_8
    .array-data 8
        0x406dcf7af640639dL    # 238.48376
        0x407194cccccccccdL    # 281.3
        0x4067c88461f9f01cL    # 190.26616
        0x407b0c59b3d07c85L    # 432.7719
        0x406a6a28f5c28f5cL    # 211.3175
        0x40703d26809d4952L    # 259.8219
        0x40759421426fe719L    # 345.25812
        0x4072607b9e060fe4L    # 294.03018
        0x40763ff0d844d014L    # 355.9963
        0x406bac869835158cL    # 221.39143
        0x406e2e98dcdb37caL    # 241.45616
        0x406caa9f16b11c6dL    # 229.33192
        0x4074c19096bb98c8L    # 332.0978
        0x407c66d681ecd4aaL    # 454.42737
        0x407684807dd44135L    # 360.28137
        0x407577ec02f2f987L    # 343.49512
        0x406ae2a1b5c7cd8aL    # 215.08224
        0x406c5421ea359360L    # 226.62914
        0x40735a5fa43fe5c9L    # 309.64835
        0x407386ca8198f1d4L    # 312.42444
    .end array-data

    :array_9
    .array-data 8
        -0x3fc3ff7c243dcceaL    # -28.002012
        -0x3fbf682f9ca5bd94L    # -33.186047
        -0x3fb041f8a0902de0L    # -63.4846
        -0x3fa8d5e15ca6ca04L    # -92.65812
        -0x3fa1af460aa64c30L    # -121.26135
        -0x3f9db338ef34d6a1L    # -146.3993
        -0x3fc64c78854cdb7bL    # -25.701286
        -0x3fc12c0c8472c0e8L    # -30.827934
        -0x3fbfe297635e742aL    # -32.229755
        -0x3fb1c750b0f27bb3L    # -60.44285
        -0x3fb2a3a41e57d9dcL    # -58.721554
        -0x3fb3676b00ffda40L    # -57.192047
        -0x3fa8fe04c0592104L    # -92.03096
        -0x3faa0c7fa1a0cf18L    # -87.80471
        -0x3fa901e939eadd59L    # -91.97014
        -0x3fa1a3dc486ad2ddL    # -121.43968
        -0x3fa289e4f765fd8bL    # -117.8454
        -0x3fa2e4bb6ed67770L    # -116.42606
        -0x3f9db86fbd273d5cL    # -146.23636
        -0x3f9d48ea9e6eeb70L    # -149.72136
    .end array-data

    :array_a
    .array-data 4
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xc3
        0x63
        0x6f
        0xb1
        0x8e
        0xb6
        0xa4
        0x9f
        0xb7
        0x8c
        0xb7
        0x66
        0x7a
        0x5a
    .end array-data

    :array_b
    .array-data 8
        -0x3fc0fe38da3c2118L    # -31.006945
        0x4042af310129cbabL    # 37.368683
        0x40327a047d3d4281L    # 18.476631
        0x40422fc7de5082cfL    # 36.373287
        0x402e846e08f21709L    # 15.258652
        0x4040f6bcbe61cfffL    # 33.927635
        0x403ab1c432ca57a8L    # 26.6944
        0x4039425ffa3b9ae1L    # 25.259277
        0x4033b44e3ffef391L    # 19.704319
        0x4037ecffb8b26395L    # 23.925777
        0x4037bef2f9873ffbL    # 23.745895
        0x4040bbf601797cc4L    # 33.468445
        0x404287e23f24d8fdL    # 37.061592
        0x40348934bd76ee74L    # 20.535961
        0x403ef4d61b2a27f2L    # 30.956392
        0x403c117d7c2ca149L    # 28.068321
        0x403ea6d5e071c53fL    # 30.651701
        0x403a3e873bc903eaL    # 26.244251
        0x4030694b380cb6c8L    # 16.411304
        0x40381f2ef0ae5365L    # 24.12181
    .end array-data

    :array_c
    .array-data 8
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
    .end array-data

    :array_d
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_e
    .array-data 8
        0x40993d80346dc5d6L    # 1615.3752
        0x409a4e2d288ce704L    # 1683.5441
        0x40a270b2b020c49cL    # 2360.349
        0x40a02d0ff9724745L    # 2070.5312
        0x40a90483fe5c91d1L    # 3202.2578
        0x4094fd887fcb923aL    # 1343.3833
        0x40a3ac379a6b50b1L    # 2518.1086
        0x409db0cd1b71758eL    # 1900.2003
        0x40a5ef8d1b71758eL    # 2807.7756
        0x409af0f79a6b50b1L    # 1724.2418
        0x4099ec46a7ef9db2L    # 1659.069
        0x40915d25c91d14e4L    # 1111.2869
        0x4092b544ea4a8c15L    # 1197.3173
        0x40a978e305532618L    # 3260.4434
        0x40a8a6dbda5119ceL    # 3155.4294
        0x40a030a28240b780L    # 2072.3174
        0x4095f65182a9930cL    # 1405.5796
        0x4091c247e28240b8L    # 1136.5702
        0x4090d4d72474538fL    # 1077.2101
        0x40912ed3f7ced917L    # 1099.707
    .end array-data

    :array_f
    .array-data 8
        0x406a7b4aa10e0221L    # 211.85286
        0x4067136c3760bf5dL    # 184.60696
        0x40735d1fbe76c8b4L    # 309.82025
        0x40726e5d82fd75e2L    # 294.89783
        0x406b98e425aee632L    # 220.77785
        0x4072e6bda5119ce0L    # 302.4213
        0x4071a3a1426fe719L    # 282.22687
        0x40730156c0d6f545L    # 304.08368
        0x40726426809d4952L    # 294.2594
        0x406d577d566cf41fL    # 234.73405
        0x40766c8902de00d2L    # 358.78345
        0x4075d25b81301648L    # 349.14734
        0x406639d4024b33dbL    # 177.80713
        0x40616c5fd8adab9fL    # 139.3867
        0x407b0d641b328b6eL    # 432.83694
        0x407301ae147ae148L    # 304.105
        0x406cc96777079e5aL    # 230.29388
        0x4071fb9cc100e6b0L    # 287.72577
        0x4067331dbca9691aL    # 185.59738
        0x40743ce1b089a027L    # 323.8051
    .end array-data

    :array_10
    .array-data 8
        -0x3fc16f784662bae0L    # -30.564571
        -0x3fc5cdf41aef6f8fL    # -26.195494
        -0x3fb060afdda8bd23L    # -63.244633
        -0x3fa8645bc01a36e3L    # -94.4319
        -0x3fa2939db22d0e56L    # -117.6935
        -0x3f9dbcc947064ecfL    # -146.10043
        -0x3fc6f1081c2e33f0L    # -25.05847
        -0x3fc15f9ae0c17657L    # -30.626543
        -0x3fbec469d7342edcL    # -34.46552
        -0x3fb082398201cd60L    # -62.98262
        -0x3fb061329c347e8dL    # -63.240643
        -0x3fb2068ac5c13fd1L    # -59.94889
        -0x3fa967525460aa65L    # -90.3856
        -0x3fa95fac710cb296L    # -90.5051
        -0x3fa9d0604189374cL    # -88.744125
        -0x3fa3388d002e2329L    # -115.116394
        -0x3fa2afb341e14be0L    # -117.254684
        -0x3fa12fe0221426feL    # -123.251945
        -0x3f9cb860aa64c2f8L    # -154.2382
        -0x3f9d464a8c154c98L    # -149.8034
    .end array-data

    :array_11
    .array-data 4
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xa1
        0xb6
        0x5f
        0xc1
        0xa8
        0x4f
        0x81
        0x5f
        0xca
        0x83
        0x66
        0xba
        0x67
        0x71
    .end array-data

    :array_12
    .array-data 8
        0x4029e1abb01c92deL    # 12.940763
        0x403f4a5edd052935L    # 31.29051
        0x404201fd60e94ee4L    # 36.015545
        0x403388461f9f01b8L    # 19.53232
        0x404106b1704ff434L    # 34.05229
        0x403d901fd9ba1b19L    # 29.562986
        0x402934d594f26aecL    # 12.603192
        0x4041ec1743e963dcL    # 35.84446
        0x403c215f02c4d65eL    # 28.130356
        0x403b2947e06961c3L    # 27.161253
        0x4031aca6fc58ab93L    # 17.674423
        0x402eccb7f5a5332bL    # 15.399841
        0x402a9cdea033e78eL    # 13.306386
        0x40394d9c8c9320daL    # 25.30317
        0x4037723704790b85L    # 23.446152
        0x4041149cdc443915L    # 34.161037
        0x402b1b3d6c721922L    # 13.553203
        0x403b7871c53f39d2L    # 27.470486
        0x4029264f11b60ae9L    # 12.574822
        0x402e6ce789e774efL    # 15.212704
    .end array-data

    :array_13
    .array-data 8
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
    .end array-data

    :array_14
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_15
    .array-data 8
        0x40a33ac95e9e1b09L    # 2461.3933
        0x4093ff516872b021L    # 1279.8295
        0x40a59f4ccccccccdL    # 2767.65
        0x40a617bc01a36e2fL    # 2827.8672
        0x40a2c2029c779a6bL    # 2401.0051
        0x4095486c083126e9L    # 1362.1055
        0x4090be798c7e2824L    # 1071.6187
        0x4092fea9fbe76c8bL    # 1215.666
        0x40959436c8b43958L    # 1381.0535
        0x409c9faa9930be0eL    # 1831.9166
        0x409ed6c84b5dcc64L    # 1973.6956
        0x40a2265182a9930cL    # 2323.1592
        0x40a225fbc01a36e3L    # 2322.9917
        0x40a961889a027525L    # 3248.7668
        0x4092740c154c985fL    # 1181.0118
        0x409a11b0be0ded29L    # 1668.4226
        0x4095c00538ef34d7L    # 1392.0051
        0x40a5f33a858793deL    # 2809.6143
        0x40a5778ff9724745L    # 2747.7812
        0x409f5f172474538fL    # 2007.7726
    .end array-data

    :array_16
    .array-data 8
        0x4075ca3afb7e9100L    # 348.6394
        0x40746440639d5e4aL    # 326.26572
        0x406ae3f32378ab0dL    # 215.12343
        0x40787e32df505d10L    # 391.88742
        0x4075313e0370cdc8L    # 339.07764
        0x406feb41dd1a21eaL    # 255.35179
        0x4070f8335d249e45L    # 271.51254
        0x4073d9031ceaf252L    # 317.56326
        0x40699558b827fa1aL    # 204.66708
        0x4072488644523f68L    # 292.53278
        0x40714a26bf8769ecL    # 276.63446
        0x406f220c5eb313beL    # 249.06401
        0x406fcff41f212d77L    # 254.49855
        0x406d5f639d5e4a38L    # 234.98091
        0x4074115532617c1cL    # 321.0833
        0x4067df18a86d71f3L    # 190.97176
        0x40766fd0bb6ed677L    # 358.98846
        0x40752414c447c30dL    # 338.25507
        0x406b2dcca2db61bbL    # 217.43123
        0x4075d2667b5f1befL    # 349.15002
    .end array-data

    :array_17
    .array-data 8
        -0x3fc20294467381d8L    # -29.989925
        -0x3fc11d6da0168b5dL    # -30.885046
        -0x3faff79945b6c376L    # -64.13127
        -0x3fa903ff583a53b9L    # -91.93754
        -0x3fa11874538ef34dL    # -123.6179
        -0x3f9cd6f4f0d844d0L    # -153.2826
        -0x3fc3302f2f987400L    # -28.81178
        -0x3fc50211233df2aaL    # -26.991926
        -0x3fc0e966e008e9b4L    # -31.088274
        -0x3fafe9129888f862L    # -64.35824
        -0x3fb0dc52bd3c3611L    # -62.278725
        -0x3fb3613083558a76L    # -57.240707
        -0x3faa14d6a161e4f7L    # -87.6744
        -0x3fa8d7a5657fb69aL    # -92.63053
        -0x3fa9b2bf1e8e6080L    # -89.207085
        -0x3fa3348a1dfb938aL    # -115.17907
        -0x3fa10494ff0025c0L    # -123.928406
        -0x3fa1171a21ea3593L    # -123.63903
        -0x3f9cb9549f94855eL    # -154.20842
        -0x3f9d1b8216c61523L    # -151.14037
    .end array-data

    :array_18
    .array-data 4
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xba
        0xa4
        0xa6
        0xbc
        0xa3
        0xb0
        0x54
        0x97
        0xaf
        0x69
        0x70
        0x81
        0xca
        0x5a
    .end array-data

    :array_19
    .array-data 8
        0x4043774ddf86e3b4L    # 38.932064
        0x402cc8110a137f39L    # 14.390755
        0x403c5ea65cf67b1cL    # 28.369726
        0x40321ee59af9ebeaL    # 18.120691
        0x4038a1fc8f32378bL    # 24.63276
        0x40325274080f98faL    # 18.322083
        0x4037f80f88333fc8L    # 23.968987
        0x40396f2745bf26f2L    # 25.434193
        0x4040a3e3c105186eL    # 33.280388
        0x4031c32c40d0aaa8L    # 17.762394
        0x4036e6e58a32f449L    # 22.90194
        0x4031c60e6299524cL    # 17.773657
        0x40417b7af640639dL    # 34.96469
        0x4043f8b26394faceL    # 39.942944
        0x4042c7d1782d3847L    # 37.56108
        0x403579f7c6759ab7L    # 21.476437
        0x403024d25edd0529L    # 16.143835
        0x40425e1e81cb46bbL    # 36.735306
        0x403aa30e3cd9a522L    # 26.636936
        0x40414ee147ae147bL    # 34.61625
    .end array-data

    :array_1a
    .array-data 8
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
    .end array-data

    :array_1b
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1c
    .array-data 8
        0x409aad496bb98c7eL    # 1707.3217
        0x40a3bef381d7dbf5L    # 2527.4756
        0x409d95c20c49ba5eL    # 1893.4395
        0x40a0e15b7e90ff97L    # 2160.6787
        0x40a276b765fd8adbL    # 2363.3582
        0x40a61d5525460aa6L    # 2830.6663
        0x40916611eb851eb8L    # 1113.5175
        0x40a65b46c226809dL    # 2861.6382
        0x409acae1e4f765feL    # 1714.7206
        0x409cf669930be0dfL    # 1853.6031
        0x4096df13c3611340L    # 1463.7693
        0x40991d25fd8adabaL    # 1607.2871
        0x4099e6ae48e8a71eL    # 1657.6702
        0x4094db997f62b6aeL    # 1334.8999
        0x409f95c96bb98c7eL    # 2021.4467
        0x40a011e5460aa64cL    # 2056.9478
        0x40a23dac083126e9L    # 2334.836
        0x4092b78a57a786c2L    # 1197.8851
        0x40a2a99141205bc0L    # 2388.7837
        0x4094b798fc504817L    # 1325.8994
    .end array-data

    :array_1d
    .array-data 8
        0x407334b37c99ae92L    # 307.29382
        0x4074714d4024b33eL    # 327.08136
        0x4066e595421c0443L    # 183.17447
        0x407a550f27bb2fecL    # 421.3162
        0x40766a48fd9fd36fL    # 358.64282
        0x406f8e6594af4f0eL    # 252.4499
        0x407576c710cb295fL    # 343.4236
        0x406f2499c38b04abL    # 249.14377
        0x406b18c8605681edL    # 216.77446
        0x406f113d46b26bf8L    # 248.53873
        0x407095663c74fb55L    # 265.33746
        0x4071c979a6b50b0fL    # 284.5922
        0x406c249595feda66L    # 225.14326
        0x407c5e9dfb9389b5L    # 453.91357
        0x407231685db76b3cL    # 291.08798
        0x406e0056d5cfaaceL    # 240.0106
        0x4066eb1a60d4562eL    # 183.34697
        0x4072e2185f06f694L    # 302.13095
        0x4070c156238da3c2L    # 268.08353
        0x4070513f141205bcL    # 261.0779
    .end array-data

    :array_1e
    .array-data 8
        -0x3fbf270c88a47ed0L    # -33.69493
        -0x3fc1e2d43d03968dL    # -30.113949
        -0x3fb08f22424a276bL    # -62.881767
        -0x3fa95faf8df7a4e8L    # -90.50491
        -0x3fa0c3e2d6238da4L    # -124.93928
        -0x3f9dc021426fe719L    # -145.99594
        -0x3fc1ee6fc58ab92cL    # -30.068607
        -0x3fc449adb8348f54L    # -27.712193
        -0x3fc620029f16b11cL    # -25.87496
        -0x3fb26c4e3ffef391L    # -59.153862
        -0x3fb1b34395810625L    # -60.5995
        -0x3fafe90b8cfbfc65L    # -64.35867
        -0x3fa94b97a24894c4L    # -90.81887
        -0x3fa9c972ef0ae536L    # -88.85236
        -0x3fa93873abc94706L    # -91.11794
        -0x3fa2b9f99c38b04bL    # -117.09414
        -0x3fa241abc947064fL    # -118.97389
        -0x3fa0eeacc0bdcad1L    # -124.270706
        -0x3f9cbcfc504816f0L    # -154.0942
        -0x3f9d40e87d2c7b89L    # -149.97162
    .end array-data

    :array_1f
    .array-data 4
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0x9b
        0xaa
        0x54
        0x7d
        0xa1
        0xc7
        0xc7
        0xad
        0x87
        0x68
        0xab
        0x79
        0x53
        0xc4
    .end array-data

    :array_20
    .array-data 8
        0x4038770e7ff583a5L    # 24.465065
        0x403f1a83c297bfa5L    # 31.103573
        0x4043995c42203600L    # 39.198128
        0x402fae7903211cb0L    # 15.840767
        0x403214471b478423L    # 18.07921
        0x4030e41d9f4d37c1L    # 16.891077
        0x4042b61ede1198afL    # 37.422817
        0x4033e6337a80cf9eL    # 19.899223
        0x4038c917f84449dcL    # 24.785522
        0x40344596c82e019bL    # 20.271832
        0x402964ee392e1ef7L    # 12.69713
        0x4041ecba40d90e24L    # 35.849434
        0x40374707bfe7e1fcL    # 23.277462
        0x403c12c13b9f127fL    # 28.073261
        0x4042a8109d0635a4L    # 37.313007
        0x402b49d9f4d37c13L    # 13.644241
        0x4042666202539757L    # 36.799866
        0x403cd502ff8ec0f9L    # 28.832077
        0x40419d6d43d03969L    # 35.229897
        0x4030dfb480a5accdL    # 16.873848
    .end array-data

    :array_21
    .array-data 8
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
    .end array-data

    :array_22
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_23
    .array-data 8
        0x40a2c00c7e28240bL    # 2400.0244
        0x409bcf18793dd97fL    # 1779.7739
        0x40a2c6b6e2eb1c43L    # 2403.3572
        0x409f5bf5a858793eL    # 2006.9899
        0x40a6a6b923a29c78L    # 2899.3616
        0x409be7b2474538efL    # 1785.9241
        0x40a1af674538ef35L    # 2263.7017
        0x40a593ac083126e9L    # 2761.836
        0x409663e3a29c779aL    # 1432.9723
        0x40986d4fdf3b645aL    # 1563.328
        0x40a3697edfa43fe6L    # 2484.7478
        0x40a2679b22d0e560L    # 2355.803
        0x40a2bdaaa64c2f83L    # 2398.8333
        0x40a066d4a2339c0fL    # 2099.4153
        0x409e88bf97247454L    # 1954.1871
        0x40a6ec96bb98c7e3L    # 2934.2944
        0x40a1773fbe76c8b4L    # 2235.6245
        0x40a2de437b4a233aL    # 2415.1318
        0x4094c722339c0ebfL    # 1329.7834
        0x40a27ded916872b0L    # 2366.964
        0x40950c5cc63f1412L    # 1347.0906
    .end array-data

    :array_24
    .array-data 8
        0x40715670e2c12ad8L    # 277.40256
        0x406d9b28b6d86ec1L    # 236.84872
        0x406a2635fc3b4f61L    # 209.19409
        0x4076853b83cf2cf9L    # 360.32703
        0x407972fd60e94ee4L    # 407.18686
        0x40680e3d5bab2181L    # 192.44499
        0x40740594467381d8L    # 320.3487
        0x407142bcd35a8588L    # 276.1711
        0x40740086594af4f1L    # 320.0328
        0x4075e8b702602c91L    # 350.54468
        0x406fad35158b8280L    # 253.41273
        0x406b37fb69984a0eL    # 217.74944
        0x40691036b8f9b131L    # 200.50668
        0x407c7de59f2ba9d2L    # 455.86856
        0x4075b8afb7e90ff9L    # 347.5429
        0x406c4acd9e83e426L    # 226.3376
        0x4073cf4e3bcd35a8L    # 316.9566
        0x406c1a995aaf78ffL    # 224.83122
        0x40752d6b1c432ca5L    # 338.83865
        0x40737ffc3b4f6167L    # 311.99908
        0x40763f7b00bcbe62L    # 355.96753
    .end array-data

    :array_25
    .array-data 8
        -0x3fbfef25c3dee782L    # -32.13166
        -0x3fc5aaff7dfa00e2L    # -26.332039
        -0x3fc25db5fa22706dL    # -29.633942
        -0x3fafc366f9335d25L    # -64.94684
        -0x3faa3fdb22d0e560L    # -87.00225
        -0x3fa270f156191149L    # -118.23527
        -0x3f9d9afd9fd36f7eL    # -147.15654
        -0x3fc44d76bc1effa0L    # -27.697407
        -0x3fc5d5945b6c3761L    # -26.165705
        -0x3fc23a1e3eaf6838L    # -29.772976
        -0x3fb3ec5e80bed741L    # -56.153366
        -0x3fb318b04ab606b8L    # -57.80712
        -0x3fb36a0841ede11aL    # -57.171623
        -0x3faaa2d441355476L    # -85.455795
        -0x3faa69b645a1cac1L    # -86.34825
        -0x3faa68c3760bf5d8L    # -86.36307
        -0x3fa128e4e26d4802L    # -123.36103
        -0x3fa1ddbb83cf2cf9L    # -120.53543
        -0x3fa2a7187e7c06e2L    # -117.38913
        -0x3f9d50f5989df117L    # -149.47002
        -0x3f9d275810624dd3L    # -150.7705
    .end array-data

    :array_26
    .array-data 4
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0x5f
        0x6b
        0x9c
        0xc9
        0x63
        0x6e
        0x50
        0x6c
        0x9b
        0x4c
        0xb0
        0x8e
        0x84
        0x6e
    .end array-data

    :array_27
    .array-data 8
        0x0
        0x403a223b46fdeb53L    # 26.133717
        0x403c6fa53b8e4b88L    # 28.436115
        0x40347e543f1c7582L    # 20.493473
        0x4035ad43393ab431L    # 21.676807
        0x4039949e8815e397L    # 25.580544
        0x40398fd3c3611340L    # 25.561825
        0x4041ada9435ac8a3L    # 35.356728
        0x402eb533b1077469L    # 15.35391
        0x403ef8257c914b16L    # 30.969322
        0x4039fb98a65492ffL    # 25.982798
        0x4037940c4156e265L    # 23.578312
        0x4035022b5a20ddc6L    # 21.008474
        0x4035403eb7cbb3c8L    # 21.250957
        0x4029d51a21ea3593L    # 12.916215
        0x40300e84be40420fL    # 16.056713
        0x40375c6fbd273d5cL    # 23.36108
        0x40409acec41dd1a2L    # 33.209435
        0x4032e21f4b1ee243L    # 18.88329
        0x403c9056605ee569L    # 28.563818
        0x4037a4b242070b8dL    # 23.643345
    .end array-data

    :array_28
    .array-data 8
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
    .end array-data

    :array_29
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2a
    .array-data 8
        0x40a2c00c7e28240bL    # 2400.0244
        0x40a5682d916872b0L    # 2740.089
        0x409e170b780346dcL    # 1925.7612
        0x40a2b3b47ae147aeL    # 2393.8525
        0x40a6b2b74bc6a7f0L    # 2905.358
        0x40a78981e4f765feL    # 3012.7537
        0x40a6709cfaacd9e8L    # 2872.3066
        0x409e0ec395810625L    # 1923.691
        0x40a267d0be0ded29L    # 2355.9077
        0x40a060a8c154c986L    # 2096.3296
        0x409674d758e21965L    # 1437.2103
        0x40a793961e4f7660L    # 3017.7932
        0x40a6cd44189374bcL    # 2918.633
        0x40a63d7fbe76c8b4L    # 2846.7495
        0x4094061460aa64c3L    # 1281.5199
        0x409d04a353f7ced9L    # 1857.1595
        0x40a18a0c7e28240bL    # 2245.0244
        0x40936a1495182a99L    # 1242.5201
        0x409f584c985f06f7L    # 2006.0748
        0x409b583ac710cb29L    # 1750.0574
        0x40a256b9db22d0e5L    # 2347.363
    .end array-data

    :array_2b
    .array-data 8
        0x40715670e2c12ad8L    # 277.40256
        0x407407be22e5de16L    # 320.48392
        0x4074a7ed3d859c8dL    # 330.49542
        0x4069358ef34d6a16L    # 201.6737
        0x407ac8ec226809d5L    # 428.55765
        0x40744ffc3b4f6167L    # 324.99908
        0x4067a8ef88b97785L    # 189.27924
        0x4074bc088509bf9cL    # 331.75208
        0x4067e661a60d4563L    # 191.19942
        0x4074db25c3dee782L    # 333.69672
        0x4075b230dd82fd76L    # 347.13693
        0x4069e5bb98c7e282L    # 207.17915
        0x406bbf7e28240b78L    # 221.98415
        0x4076c54a03c4b09fL    # 364.33057
        0x406d9e1c8216c615L    # 236.94098
        0x40643f41c8216c61L    # 161.97678
        0x406e257bdcf0307fL    # 241.17137
        0x407468bc6a7ef9dbL    # 326.546
        0x40750ddbdf8f4730L    # 336.86618
        0x4073e9fb7e90ff97L    # 318.6239
        0x4068b858b827fa1aL    # 197.76083
    .end array-data

    :array_2c
    .array-data 8
        -0x3fbfef25c3dee782L    # -32.13166
        -0x3fc127f91e646f15L    # -30.843855
        -0x3fbf35af9ebe9c88L    # -33.580578
        -0x3fb000e3de6149c7L    # -63.993046
        -0x3fa971c45cbbc2b9L    # -90.22239
        -0x3fa25a0e7ff583a5L    # -118.592865
        -0x3f9d5da9a8049668L    # -149.07304
        -0x3fc6594046412cf1L    # -25.651363
        -0x3fc37538bcdfefbfL    # -28.542103
        -0x3fc341d798d8a97aL    # -28.742804
        -0x3fb2d557bc7f77afL    # -58.33326
        -0x3fb1686833c6002aL    # -61.18432
        -0x3fb3693e2d6238daL    # -57.17779
        -0x3fa86a22e5de15caL    # -94.34162
        -0x3fa9f2649906cca3L    # -88.21261
        -0x3faaa33a14cec41eL    # -85.44958
        -0x3fa1314af4f0d845L    # -123.2298
        -0x3fa19be47991bc56L    # -121.56418
        -0x3fa31567620ee8d1L    # -115.665565
        -0x3f9d3e7967caea74L    # -150.04768
        -0x3f9dafd1b71758e2L    # -146.50565
    .end array-data

    :array_2d
    .array-data 4
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0x60
        0x7d
        0xc6
        0x51
        0x50
        0x58
        0x96
        0x53
        0xb2
        0x80
        0x79
        0x9b
        0xbc
        0x6f
    .end array-data

    :array_2e
    .array-data 8
        0x0
        0x40385ca9691a75cdL    # 24.36196
        0x404093041cc532a5L    # 33.148563
        0x4037818c3b0c4589L    # 23.506046
        0x402c63d7f51efb6eL    # 14.195007
        0x403d6b588e368f08L    # 29.41932
        0x4040350a02b84125L    # 32.414368
        0x4029e083558a7610L    # 12.938502
        0x404269290257c915L    # 36.821564
        0x4037bd4163779e9dL    # 23.739279
        0x40418797785729b3L    # 35.05931
        0x402b6a47cb70ac3bL    # 13.707579
        0x4038ea773e24febdL    # 24.915882
        0x403172367e414e7fL    # 17.446144
        0x4038dae685db76b4L    # 24.85508
        0x402d9728c79f6662L    # 14.795233
        0x40434a889c1b5419L    # 38.582294
        0x40435c45fe111277L    # 38.720886
        0x402f5d08d4bad7d8L    # 15.681708
        0x403956b93ccd0fe9L    # 25.338764
        0x403af565c2d27807L    # 26.958584
    .end array-data

    :array_2f
    .array-data 8
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
    .end array-data

    :array_30
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x15

    const/16 v1, 0x14

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x43340000    # 180.0f

    iput v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->VELOCITY_COMPLETE_BASIC:F

    const v0, 0x404ccccd    # 3.2f

    iput v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mParticlePerSec:F

    iput v3, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mDirectionCnt:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mDecibel:F

    new-array v0, v1, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_1:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_1:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_1:[D

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_1:[I

    new-array v0, v1, [D

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_1:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_1:[D

    new-array v0, v1, [Z

    fill-array-data v0, :array_6

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_1:[Z

    new-array v0, v1, [D

    fill-array-data v0, :array_7

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_2:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_8

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_2:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_9

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_2:[D

    new-array v0, v1, [I

    fill-array-data v0, :array_a

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_2:[I

    new-array v0, v1, [D

    fill-array-data v0, :array_b

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_2:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_c

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_2:[D

    new-array v0, v1, [Z

    fill-array-data v0, :array_d

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_2:[Z

    new-array v0, v1, [D

    fill-array-data v0, :array_e

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_3:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_f

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_3:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_10

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_3:[D

    new-array v0, v1, [I

    fill-array-data v0, :array_11

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_3:[I

    new-array v0, v1, [D

    fill-array-data v0, :array_12

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_3:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_13

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_3:[D

    new-array v0, v1, [Z

    fill-array-data v0, :array_14

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_3:[Z

    new-array v0, v1, [D

    fill-array-data v0, :array_15

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_4:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_16

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_4:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_17

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_4:[D

    new-array v0, v1, [I

    fill-array-data v0, :array_18

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_4:[I

    new-array v0, v1, [D

    fill-array-data v0, :array_19

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_4:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_1a

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_4:[D

    new-array v0, v1, [Z

    fill-array-data v0, :array_1b

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_4:[Z

    new-array v0, v1, [D

    fill-array-data v0, :array_1c

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_5:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_1d

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_5:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_1e

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_5:[D

    new-array v0, v1, [I

    fill-array-data v0, :array_1f

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_5:[I

    new-array v0, v1, [D

    fill-array-data v0, :array_20

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_5:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_21

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_5:[D

    new-array v0, v1, [Z

    fill-array-data v0, :array_22

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_5:[Z

    new-array v0, v2, [D

    fill-array-data v0, :array_23

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_6:[D

    new-array v0, v2, [D

    fill-array-data v0, :array_24

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_6:[D

    new-array v0, v2, [D

    fill-array-data v0, :array_25

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_6:[D

    new-array v0, v2, [I

    fill-array-data v0, :array_26

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_6:[I

    new-array v0, v2, [D

    fill-array-data v0, :array_27

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_6:[D

    new-array v0, v2, [D

    fill-array-data v0, :array_28

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_6:[D

    new-array v0, v2, [Z

    fill-array-data v0, :array_29

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_6:[Z

    new-array v0, v2, [D

    fill-array-data v0, :array_2a

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_7:[D

    new-array v0, v2, [D

    fill-array-data v0, :array_2b

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_7:[D

    new-array v0, v2, [D

    fill-array-data v0, :array_2c

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_7:[D

    new-array v0, v2, [I

    fill-array-data v0, :array_2d

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_7:[I

    new-array v0, v2, [D

    fill-array-data v0, :array_2e

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_7:[D

    new-array v0, v2, [D

    fill-array-data v0, :array_2f

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_7:[D

    new-array v0, v2, [Z

    fill-array-data v0, :array_30

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_7:[Z

    const/4 v0, 0x7

    new-array v0, v0, [[D

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_1:[D

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_2:[D

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_3:[D

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_4:[D

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_5:[D

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_6:[D

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_7:[D

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes:[[D

    const/4 v0, 0x7

    new-array v0, v0, [[D

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_1:[D

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_2:[D

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_3:[D

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_4:[D

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_5:[D

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_6:[D

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_7:[D

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities:[[D

    const/4 v0, 0x7

    new-array v0, v0, [[D

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_1:[D

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_2:[D

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_3:[D

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_4:[D

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_5:[D

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_6:[D

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_7:[D

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles:[[D

    const/4 v0, 0x7

    new-array v0, v0, [[I

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_1:[I

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_2:[I

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_3:[I

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_4:[I

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_5:[I

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_6:[I

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_7:[I

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas:[[I

    const/4 v0, 0x7

    new-array v0, v0, [[D

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_1:[D

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_2:[D

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_3:[D

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_4:[D

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_5:[D

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_6:[D

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_7:[D

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes:[[D

    const/4 v0, 0x7

    new-array v0, v0, [[D

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_1:[D

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_2:[D

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_3:[D

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_4:[D

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_5:[D

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_6:[D

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_7:[D

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes:[[D

    const/4 v0, 0x7

    new-array v0, v0, [[Z

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_1:[Z

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_2:[Z

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_3:[Z

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_4:[Z

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_5:[Z

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_6:[Z

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_7:[Z

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs:[[Z

    iput-boolean v3, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->isClearView:Z

    new-instance v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView$WeakRefHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView$WeakRefHandler;-><init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mParticleTickHandler:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView$WeakRefHandler;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->init(Landroid/content/Context;)V

    return-void

    nop

    :array_0
    .array-data 8
        0x40a1c62ac083126fL    # 2275.0835
        0x40a61a3c432ca57aL    # 2829.1177
        0x40a7423b7e90ff97L    # 2977.1162
        0x40a1c99edfa43fe6L    # 2276.8103
        0x40a207cb43958106L    # 2307.897
        0x40a3e6643fe5c91dL    # 2547.1958
        0x4098b7dd495182aaL    # 1581.9661
        0x409ab6eb1c432ca5L    # 1709.7296
        0x409352ac3c9eecc0L    # 1236.6682
        0x409eb2e6b50b0f28L    # 1964.7253
        0x40a1d2dcac083127L    # 2281.431
        0x409d79444d013a93L    # 1886.3167
        0x40a06c0189374bc7L    # 2102.003
        0x40a5e3ee147ae148L    # 2801.965
        0x409b3fae7d566cf4L    # 1743.9204
        0x40a46a21a36e2eb2L    # 2613.0657
        0x409d8d09ba5e353fL    # 1891.2595
        0x40953938bac710cbL    # 1358.3054
        0x40a53a4ca57a786cL    # 2717.1497
        0x40a5d6ca2339c0ecL    # 2795.3948
    .end array-data

    :array_1
    .array-data 8
        0x40721cafb7e90ff9L    # 289.7929
        0x4072167640639d5eL    # 289.40387
        0x406a1df1e8e60807L    # 208.93578
        0x407ae0b39c0ebee0L    # 430.04385
        0x40737450b0f27bb3L    # 311.2697
        0x40686483f91e646fL    # 195.14111
        0x406a4318e757928eL    # 210.09679
        0x407372089a027525L    # 311.1271
        0x406a1c8769ec2ce4L    # 208.89153
        0x4075a97ee4e26d48L    # 346.59348
        0x40740acd013a92a3L    # 320.67505
        0x40694f1bc5586445L    # 202.47214
        0x407c384cc2507208L    # 451.51874
        0x40731f2e9ccb7d41L    # 305.94888
        0x40758b90e0221427L    # 344.72287
        0x4074ca6872b020c5L    # 332.6505
        0x4070a04bdba0a527L    # 266.01852
        0x4075f722bbecaab9L    # 351.44598
        0x406abc432ca57a78L    # 213.8832
        0x407552ecfe9b7bf2L    # 341.18286
    .end array-data

    :array_2
    .array-data 8
        -0x3fc052277c45cbbcL    # -31.679085
        -0x3fc405b738e6d15bL    # -27.977673
        -0x3fb32fdcdf698783L    # -57.626072
        -0x3fa85cd5cfaacd9fL    # -94.54945
        -0x3fa11c2a9930be0eL    # -123.5599
        -0x3f9d519fe86833c6L    # -149.44923
        -0x3fc30350e3476295L    # -28.987047
        -0x3fc1706c97d8cf3aL    # -30.560843
        -0x3fc0bc97fa5d28d0L    # -31.263306
        -0x3fb24d7be121ee67L    # -59.394657
        -0x3fb3dccaff6d3309L    # -56.275055
        -0x3faff1dc1e7967cbL    # -64.22094
        -0x3fa86dc6d1e108c4L    # -94.28474
        -0x3fa9d2cbd1244a62L    # -88.70631
        -0x3fa841ddc1e7967dL    # -94.97084
        -0x3fa212a10e022142L    # -119.70892
        -0x3fa1d7e2046c764bL    # -120.62683
        -0x3fa28c2949a56580L    # -117.80998
        -0x3f9dbfbda5119ce0L    # -146.0081
        -0x3f9cdecce1c58256L    # -153.03749
    .end array-data

    :array_3
    .array-data 4
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0x78
        0x86
        0x6e
        0xbf
        0x7f
        0x86
        0x6e
        0x6f
        0x6d
        0x6e
        0x4f
        0x73
        0x6a
        0x7a
    .end array-data

    :array_4
    .array-data 8
        0x402c362bae03b3eaL    # 14.105802
        0x403097ba450acc0cL    # 16.592686
        0x40429514c22ee419L    # 37.164696
        0x4033150d0678c005L    # 19.08223
        0x4041ab23033a4724L    # 35.337006
        0x404013bfc6540cc8L    # 32.15429
        0x402efc0d90e23af3L    # 15.492291
        0x4039239a5a89b952L    # 25.139074
        0x40323ff705857affL    # 18.249863
        0x403f5ae5ffa3b9aeL    # 31.355072
        0x4037c69707182236L    # 23.775742
        0x403461c842fa5094L    # 20.381962
        0x4040c416f0068db9L    # 33.53195
        0x4035d0f7b9e060feL    # 21.81628
        0x40339e40420f6f09L    # 19.618168
        0x40305d4c22ee4192L    # 16.364443
        0x4035fc8a9bcfd4bfL    # 21.98649
        0x402fd03dbc23315dL    # 15.906721
        0x40404eff7dfa00e2L    # 32.617172
        0x402f30a6b93ccd10L    # 15.595022
    .end array-data

    :array_5
    .array-data 8
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
    .end array-data

    :array_6
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_7
    .array-data 8
        0x40a4119bc01a36e3L    # 2568.8042
        0x4093471b3d07c84bL    # 1233.7766
        0x40a897307c84b5ddL    # 3147.5947
        0x4096f08346dc5d64L    # 1468.1282
        0x40a1c684c2f837b5L    # 2275.2593
        0x40a3501ce075f6fdL    # 2472.0564
        0x409efaa809d49518L    # 1982.6641
        0x40a74ee0c49ba5e3L    # 2983.439
        0x40a317fdd97f62b7L    # 2443.9958
        0x40a4b19559b3d07dL    # 2648.7917
        0x40a411ed5cfaacdaL    # 2568.9636
        0x4091b101205bc01aL    # 1132.2511
        0x40a2df463f141206L    # 2415.6372
        0x40915633b645a1cbL    # 1109.5505
        0x40a8e407ae147ae1L    # 3186.015
        0x40a013463f141206L    # 2057.6372
        0x40a3d4205bc01a37L    # 2538.0632
        0x40a5cbc779a6b50bL    # 2789.8896
        0x409988ea161e4f76L    # 1634.2286
        0x409d8eafb7e90ff9L    # 1891.6716
    .end array-data

    :array_8
    .array-data 8
        0x406dcf7af640639dL    # 238.48376
        0x407194cccccccccdL    # 281.3
        0x4067c88461f9f01cL    # 190.26616
        0x407b0c59b3d07c85L    # 432.7719
        0x406a6a28f5c28f5cL    # 211.3175
        0x40703d26809d4952L    # 259.8219
        0x40759421426fe719L    # 345.25812
        0x4072607b9e060fe4L    # 294.03018
        0x40763ff0d844d014L    # 355.9963
        0x406bac869835158cL    # 221.39143
        0x406e2e98dcdb37caL    # 241.45616
        0x406caa9f16b11c6dL    # 229.33192
        0x4074c19096bb98c8L    # 332.0978
        0x407c66d681ecd4aaL    # 454.42737
        0x407684807dd44135L    # 360.28137
        0x407577ec02f2f987L    # 343.49512
        0x406ae2a1b5c7cd8aL    # 215.08224
        0x406c5421ea359360L    # 226.62914
        0x40735a5fa43fe5c9L    # 309.64835
        0x407386ca8198f1d4L    # 312.42444
    .end array-data

    :array_9
    .array-data 8
        -0x3fc3ff7c243dcceaL    # -28.002012
        -0x3fbf682f9ca5bd94L    # -33.186047
        -0x3fb041f8a0902de0L    # -63.4846
        -0x3fa8d5e15ca6ca04L    # -92.65812
        -0x3fa1af460aa64c30L    # -121.26135
        -0x3f9db338ef34d6a1L    # -146.3993
        -0x3fc64c78854cdb7bL    # -25.701286
        -0x3fc12c0c8472c0e8L    # -30.827934
        -0x3fbfe297635e742aL    # -32.229755
        -0x3fb1c750b0f27bb3L    # -60.44285
        -0x3fb2a3a41e57d9dcL    # -58.721554
        -0x3fb3676b00ffda40L    # -57.192047
        -0x3fa8fe04c0592104L    # -92.03096
        -0x3faa0c7fa1a0cf18L    # -87.80471
        -0x3fa901e939eadd59L    # -91.97014
        -0x3fa1a3dc486ad2ddL    # -121.43968
        -0x3fa289e4f765fd8bL    # -117.8454
        -0x3fa2e4bb6ed67770L    # -116.42606
        -0x3f9db86fbd273d5cL    # -146.23636
        -0x3f9d48ea9e6eeb70L    # -149.72136
    .end array-data

    :array_a
    .array-data 4
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xc3
        0x63
        0x6f
        0xb1
        0x8e
        0xb6
        0xa4
        0x9f
        0xb7
        0x8c
        0xb7
        0x66
        0x7a
        0x5a
    .end array-data

    :array_b
    .array-data 8
        -0x3fc0fe38da3c2118L    # -31.006945
        0x4042af310129cbabL    # 37.368683
        0x40327a047d3d4281L    # 18.476631
        0x40422fc7de5082cfL    # 36.373287
        0x402e846e08f21709L    # 15.258652
        0x4040f6bcbe61cfffL    # 33.927635
        0x403ab1c432ca57a8L    # 26.6944
        0x4039425ffa3b9ae1L    # 25.259277
        0x4033b44e3ffef391L    # 19.704319
        0x4037ecffb8b26395L    # 23.925777
        0x4037bef2f9873ffbL    # 23.745895
        0x4040bbf601797cc4L    # 33.468445
        0x404287e23f24d8fdL    # 37.061592
        0x40348934bd76ee74L    # 20.535961
        0x403ef4d61b2a27f2L    # 30.956392
        0x403c117d7c2ca149L    # 28.068321
        0x403ea6d5e071c53fL    # 30.651701
        0x403a3e873bc903eaL    # 26.244251
        0x4030694b380cb6c8L    # 16.411304
        0x40381f2ef0ae5365L    # 24.12181
    .end array-data

    :array_c
    .array-data 8
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
    .end array-data

    :array_d
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_e
    .array-data 8
        0x40993d80346dc5d6L    # 1615.3752
        0x409a4e2d288ce704L    # 1683.5441
        0x40a270b2b020c49cL    # 2360.349
        0x40a02d0ff9724745L    # 2070.5312
        0x40a90483fe5c91d1L    # 3202.2578
        0x4094fd887fcb923aL    # 1343.3833
        0x40a3ac379a6b50b1L    # 2518.1086
        0x409db0cd1b71758eL    # 1900.2003
        0x40a5ef8d1b71758eL    # 2807.7756
        0x409af0f79a6b50b1L    # 1724.2418
        0x4099ec46a7ef9db2L    # 1659.069
        0x40915d25c91d14e4L    # 1111.2869
        0x4092b544ea4a8c15L    # 1197.3173
        0x40a978e305532618L    # 3260.4434
        0x40a8a6dbda5119ceL    # 3155.4294
        0x40a030a28240b780L    # 2072.3174
        0x4095f65182a9930cL    # 1405.5796
        0x4091c247e28240b8L    # 1136.5702
        0x4090d4d72474538fL    # 1077.2101
        0x40912ed3f7ced917L    # 1099.707
    .end array-data

    :array_f
    .array-data 8
        0x406a7b4aa10e0221L    # 211.85286
        0x4067136c3760bf5dL    # 184.60696
        0x40735d1fbe76c8b4L    # 309.82025
        0x40726e5d82fd75e2L    # 294.89783
        0x406b98e425aee632L    # 220.77785
        0x4072e6bda5119ce0L    # 302.4213
        0x4071a3a1426fe719L    # 282.22687
        0x40730156c0d6f545L    # 304.08368
        0x40726426809d4952L    # 294.2594
        0x406d577d566cf41fL    # 234.73405
        0x40766c8902de00d2L    # 358.78345
        0x4075d25b81301648L    # 349.14734
        0x406639d4024b33dbL    # 177.80713
        0x40616c5fd8adab9fL    # 139.3867
        0x407b0d641b328b6eL    # 432.83694
        0x407301ae147ae148L    # 304.105
        0x406cc96777079e5aL    # 230.29388
        0x4071fb9cc100e6b0L    # 287.72577
        0x4067331dbca9691aL    # 185.59738
        0x40743ce1b089a027L    # 323.8051
    .end array-data

    :array_10
    .array-data 8
        -0x3fc16f784662bae0L    # -30.564571
        -0x3fc5cdf41aef6f8fL    # -26.195494
        -0x3fb060afdda8bd23L    # -63.244633
        -0x3fa8645bc01a36e3L    # -94.4319
        -0x3fa2939db22d0e56L    # -117.6935
        -0x3f9dbcc947064ecfL    # -146.10043
        -0x3fc6f1081c2e33f0L    # -25.05847
        -0x3fc15f9ae0c17657L    # -30.626543
        -0x3fbec469d7342edcL    # -34.46552
        -0x3fb082398201cd60L    # -62.98262
        -0x3fb061329c347e8dL    # -63.240643
        -0x3fb2068ac5c13fd1L    # -59.94889
        -0x3fa967525460aa65L    # -90.3856
        -0x3fa95fac710cb296L    # -90.5051
        -0x3fa9d0604189374cL    # -88.744125
        -0x3fa3388d002e2329L    # -115.116394
        -0x3fa2afb341e14be0L    # -117.254684
        -0x3fa12fe0221426feL    # -123.251945
        -0x3f9cb860aa64c2f8L    # -154.2382
        -0x3f9d464a8c154c98L    # -149.8034
    .end array-data

    :array_11
    .array-data 4
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xa1
        0xb6
        0x5f
        0xc1
        0xa8
        0x4f
        0x81
        0x5f
        0xca
        0x83
        0x66
        0xba
        0x67
        0x71
    .end array-data

    :array_12
    .array-data 8
        0x4029e1abb01c92deL    # 12.940763
        0x403f4a5edd052935L    # 31.29051
        0x404201fd60e94ee4L    # 36.015545
        0x403388461f9f01b8L    # 19.53232
        0x404106b1704ff434L    # 34.05229
        0x403d901fd9ba1b19L    # 29.562986
        0x402934d594f26aecL    # 12.603192
        0x4041ec1743e963dcL    # 35.84446
        0x403c215f02c4d65eL    # 28.130356
        0x403b2947e06961c3L    # 27.161253
        0x4031aca6fc58ab93L    # 17.674423
        0x402eccb7f5a5332bL    # 15.399841
        0x402a9cdea033e78eL    # 13.306386
        0x40394d9c8c9320daL    # 25.30317
        0x4037723704790b85L    # 23.446152
        0x4041149cdc443915L    # 34.161037
        0x402b1b3d6c721922L    # 13.553203
        0x403b7871c53f39d2L    # 27.470486
        0x4029264f11b60ae9L    # 12.574822
        0x402e6ce789e774efL    # 15.212704
    .end array-data

    :array_13
    .array-data 8
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
    .end array-data

    :array_14
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_15
    .array-data 8
        0x40a33ac95e9e1b09L    # 2461.3933
        0x4093ff516872b021L    # 1279.8295
        0x40a59f4ccccccccdL    # 2767.65
        0x40a617bc01a36e2fL    # 2827.8672
        0x40a2c2029c779a6bL    # 2401.0051
        0x4095486c083126e9L    # 1362.1055
        0x4090be798c7e2824L    # 1071.6187
        0x4092fea9fbe76c8bL    # 1215.666
        0x40959436c8b43958L    # 1381.0535
        0x409c9faa9930be0eL    # 1831.9166
        0x409ed6c84b5dcc64L    # 1973.6956
        0x40a2265182a9930cL    # 2323.1592
        0x40a225fbc01a36e3L    # 2322.9917
        0x40a961889a027525L    # 3248.7668
        0x4092740c154c985fL    # 1181.0118
        0x409a11b0be0ded29L    # 1668.4226
        0x4095c00538ef34d7L    # 1392.0051
        0x40a5f33a858793deL    # 2809.6143
        0x40a5778ff9724745L    # 2747.7812
        0x409f5f172474538fL    # 2007.7726
    .end array-data

    :array_16
    .array-data 8
        0x4075ca3afb7e9100L    # 348.6394
        0x40746440639d5e4aL    # 326.26572
        0x406ae3f32378ab0dL    # 215.12343
        0x40787e32df505d10L    # 391.88742
        0x4075313e0370cdc8L    # 339.07764
        0x406feb41dd1a21eaL    # 255.35179
        0x4070f8335d249e45L    # 271.51254
        0x4073d9031ceaf252L    # 317.56326
        0x40699558b827fa1aL    # 204.66708
        0x4072488644523f68L    # 292.53278
        0x40714a26bf8769ecL    # 276.63446
        0x406f220c5eb313beL    # 249.06401
        0x406fcff41f212d77L    # 254.49855
        0x406d5f639d5e4a38L    # 234.98091
        0x4074115532617c1cL    # 321.0833
        0x4067df18a86d71f3L    # 190.97176
        0x40766fd0bb6ed677L    # 358.98846
        0x40752414c447c30dL    # 338.25507
        0x406b2dcca2db61bbL    # 217.43123
        0x4075d2667b5f1befL    # 349.15002
    .end array-data

    :array_17
    .array-data 8
        -0x3fc20294467381d8L    # -29.989925
        -0x3fc11d6da0168b5dL    # -30.885046
        -0x3faff79945b6c376L    # -64.13127
        -0x3fa903ff583a53b9L    # -91.93754
        -0x3fa11874538ef34dL    # -123.6179
        -0x3f9cd6f4f0d844d0L    # -153.2826
        -0x3fc3302f2f987400L    # -28.81178
        -0x3fc50211233df2aaL    # -26.991926
        -0x3fc0e966e008e9b4L    # -31.088274
        -0x3fafe9129888f862L    # -64.35824
        -0x3fb0dc52bd3c3611L    # -62.278725
        -0x3fb3613083558a76L    # -57.240707
        -0x3faa14d6a161e4f7L    # -87.6744
        -0x3fa8d7a5657fb69aL    # -92.63053
        -0x3fa9b2bf1e8e6080L    # -89.207085
        -0x3fa3348a1dfb938aL    # -115.17907
        -0x3fa10494ff0025c0L    # -123.928406
        -0x3fa1171a21ea3593L    # -123.63903
        -0x3f9cb9549f94855eL    # -154.20842
        -0x3f9d1b8216c61523L    # -151.14037
    .end array-data

    :array_18
    .array-data 4
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xba
        0xa4
        0xa6
        0xbc
        0xa3
        0xb0
        0x54
        0x97
        0xaf
        0x69
        0x70
        0x81
        0xca
        0x5a
    .end array-data

    :array_19
    .array-data 8
        0x4043774ddf86e3b4L    # 38.932064
        0x402cc8110a137f39L    # 14.390755
        0x403c5ea65cf67b1cL    # 28.369726
        0x40321ee59af9ebeaL    # 18.120691
        0x4038a1fc8f32378bL    # 24.63276
        0x40325274080f98faL    # 18.322083
        0x4037f80f88333fc8L    # 23.968987
        0x40396f2745bf26f2L    # 25.434193
        0x4040a3e3c105186eL    # 33.280388
        0x4031c32c40d0aaa8L    # 17.762394
        0x4036e6e58a32f449L    # 22.90194
        0x4031c60e6299524cL    # 17.773657
        0x40417b7af640639dL    # 34.96469
        0x4043f8b26394faceL    # 39.942944
        0x4042c7d1782d3847L    # 37.56108
        0x403579f7c6759ab7L    # 21.476437
        0x403024d25edd0529L    # 16.143835
        0x40425e1e81cb46bbL    # 36.735306
        0x403aa30e3cd9a522L    # 26.636936
        0x40414ee147ae147bL    # 34.61625
    .end array-data

    :array_1a
    .array-data 8
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
    .end array-data

    :array_1b
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1c
    .array-data 8
        0x409aad496bb98c7eL    # 1707.3217
        0x40a3bef381d7dbf5L    # 2527.4756
        0x409d95c20c49ba5eL    # 1893.4395
        0x40a0e15b7e90ff97L    # 2160.6787
        0x40a276b765fd8adbL    # 2363.3582
        0x40a61d5525460aa6L    # 2830.6663
        0x40916611eb851eb8L    # 1113.5175
        0x40a65b46c226809dL    # 2861.6382
        0x409acae1e4f765feL    # 1714.7206
        0x409cf669930be0dfL    # 1853.6031
        0x4096df13c3611340L    # 1463.7693
        0x40991d25fd8adabaL    # 1607.2871
        0x4099e6ae48e8a71eL    # 1657.6702
        0x4094db997f62b6aeL    # 1334.8999
        0x409f95c96bb98c7eL    # 2021.4467
        0x40a011e5460aa64cL    # 2056.9478
        0x40a23dac083126e9L    # 2334.836
        0x4092b78a57a786c2L    # 1197.8851
        0x40a2a99141205bc0L    # 2388.7837
        0x4094b798fc504817L    # 1325.8994
    .end array-data

    :array_1d
    .array-data 8
        0x407334b37c99ae92L    # 307.29382
        0x4074714d4024b33eL    # 327.08136
        0x4066e595421c0443L    # 183.17447
        0x407a550f27bb2fecL    # 421.3162
        0x40766a48fd9fd36fL    # 358.64282
        0x406f8e6594af4f0eL    # 252.4499
        0x407576c710cb295fL    # 343.4236
        0x406f2499c38b04abL    # 249.14377
        0x406b18c8605681edL    # 216.77446
        0x406f113d46b26bf8L    # 248.53873
        0x407095663c74fb55L    # 265.33746
        0x4071c979a6b50b0fL    # 284.5922
        0x406c249595feda66L    # 225.14326
        0x407c5e9dfb9389b5L    # 453.91357
        0x407231685db76b3cL    # 291.08798
        0x406e0056d5cfaaceL    # 240.0106
        0x4066eb1a60d4562eL    # 183.34697
        0x4072e2185f06f694L    # 302.13095
        0x4070c156238da3c2L    # 268.08353
        0x4070513f141205bcL    # 261.0779
    .end array-data

    :array_1e
    .array-data 8
        -0x3fbf270c88a47ed0L    # -33.69493
        -0x3fc1e2d43d03968dL    # -30.113949
        -0x3fb08f22424a276bL    # -62.881767
        -0x3fa95faf8df7a4e8L    # -90.50491
        -0x3fa0c3e2d6238da4L    # -124.93928
        -0x3f9dc021426fe719L    # -145.99594
        -0x3fc1ee6fc58ab92cL    # -30.068607
        -0x3fc449adb8348f54L    # -27.712193
        -0x3fc620029f16b11cL    # -25.87496
        -0x3fb26c4e3ffef391L    # -59.153862
        -0x3fb1b34395810625L    # -60.5995
        -0x3fafe90b8cfbfc65L    # -64.35867
        -0x3fa94b97a24894c4L    # -90.81887
        -0x3fa9c972ef0ae536L    # -88.85236
        -0x3fa93873abc94706L    # -91.11794
        -0x3fa2b9f99c38b04bL    # -117.09414
        -0x3fa241abc947064fL    # -118.97389
        -0x3fa0eeacc0bdcad1L    # -124.270706
        -0x3f9cbcfc504816f0L    # -154.0942
        -0x3f9d40e87d2c7b89L    # -149.97162
    .end array-data

    :array_1f
    .array-data 4
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0x9b
        0xaa
        0x54
        0x7d
        0xa1
        0xc7
        0xc7
        0xad
        0x87
        0x68
        0xab
        0x79
        0x53
        0xc4
    .end array-data

    :array_20
    .array-data 8
        0x4038770e7ff583a5L    # 24.465065
        0x403f1a83c297bfa5L    # 31.103573
        0x4043995c42203600L    # 39.198128
        0x402fae7903211cb0L    # 15.840767
        0x403214471b478423L    # 18.07921
        0x4030e41d9f4d37c1L    # 16.891077
        0x4042b61ede1198afL    # 37.422817
        0x4033e6337a80cf9eL    # 19.899223
        0x4038c917f84449dcL    # 24.785522
        0x40344596c82e019bL    # 20.271832
        0x402964ee392e1ef7L    # 12.69713
        0x4041ecba40d90e24L    # 35.849434
        0x40374707bfe7e1fcL    # 23.277462
        0x403c12c13b9f127fL    # 28.073261
        0x4042a8109d0635a4L    # 37.313007
        0x402b49d9f4d37c13L    # 13.644241
        0x4042666202539757L    # 36.799866
        0x403cd502ff8ec0f9L    # 28.832077
        0x40419d6d43d03969L    # 35.229897
        0x4030dfb480a5accdL    # 16.873848
    .end array-data

    :array_21
    .array-data 8
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
    .end array-data

    :array_22
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_23
    .array-data 8
        0x40a2c00c7e28240bL    # 2400.0244
        0x409bcf18793dd97fL    # 1779.7739
        0x40a2c6b6e2eb1c43L    # 2403.3572
        0x409f5bf5a858793eL    # 2006.9899
        0x40a6a6b923a29c78L    # 2899.3616
        0x409be7b2474538efL    # 1785.9241
        0x40a1af674538ef35L    # 2263.7017
        0x40a593ac083126e9L    # 2761.836
        0x409663e3a29c779aL    # 1432.9723
        0x40986d4fdf3b645aL    # 1563.328
        0x40a3697edfa43fe6L    # 2484.7478
        0x40a2679b22d0e560L    # 2355.803
        0x40a2bdaaa64c2f83L    # 2398.8333
        0x40a066d4a2339c0fL    # 2099.4153
        0x409e88bf97247454L    # 1954.1871
        0x40a6ec96bb98c7e3L    # 2934.2944
        0x40a1773fbe76c8b4L    # 2235.6245
        0x40a2de437b4a233aL    # 2415.1318
        0x4094c722339c0ebfL    # 1329.7834
        0x40a27ded916872b0L    # 2366.964
        0x40950c5cc63f1412L    # 1347.0906
    .end array-data

    :array_24
    .array-data 8
        0x40715670e2c12ad8L    # 277.40256
        0x406d9b28b6d86ec1L    # 236.84872
        0x406a2635fc3b4f61L    # 209.19409
        0x4076853b83cf2cf9L    # 360.32703
        0x407972fd60e94ee4L    # 407.18686
        0x40680e3d5bab2181L    # 192.44499
        0x40740594467381d8L    # 320.3487
        0x407142bcd35a8588L    # 276.1711
        0x40740086594af4f1L    # 320.0328
        0x4075e8b702602c91L    # 350.54468
        0x406fad35158b8280L    # 253.41273
        0x406b37fb69984a0eL    # 217.74944
        0x40691036b8f9b131L    # 200.50668
        0x407c7de59f2ba9d2L    # 455.86856
        0x4075b8afb7e90ff9L    # 347.5429
        0x406c4acd9e83e426L    # 226.3376
        0x4073cf4e3bcd35a8L    # 316.9566
        0x406c1a995aaf78ffL    # 224.83122
        0x40752d6b1c432ca5L    # 338.83865
        0x40737ffc3b4f6167L    # 311.99908
        0x40763f7b00bcbe62L    # 355.96753
    .end array-data

    :array_25
    .array-data 8
        -0x3fbfef25c3dee782L    # -32.13166
        -0x3fc5aaff7dfa00e2L    # -26.332039
        -0x3fc25db5fa22706dL    # -29.633942
        -0x3fafc366f9335d25L    # -64.94684
        -0x3faa3fdb22d0e560L    # -87.00225
        -0x3fa270f156191149L    # -118.23527
        -0x3f9d9afd9fd36f7eL    # -147.15654
        -0x3fc44d76bc1effa0L    # -27.697407
        -0x3fc5d5945b6c3761L    # -26.165705
        -0x3fc23a1e3eaf6838L    # -29.772976
        -0x3fb3ec5e80bed741L    # -56.153366
        -0x3fb318b04ab606b8L    # -57.80712
        -0x3fb36a0841ede11aL    # -57.171623
        -0x3faaa2d441355476L    # -85.455795
        -0x3faa69b645a1cac1L    # -86.34825
        -0x3faa68c3760bf5d8L    # -86.36307
        -0x3fa128e4e26d4802L    # -123.36103
        -0x3fa1ddbb83cf2cf9L    # -120.53543
        -0x3fa2a7187e7c06e2L    # -117.38913
        -0x3f9d50f5989df117L    # -149.47002
        -0x3f9d275810624dd3L    # -150.7705
    .end array-data

    :array_26
    .array-data 4
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0x5f
        0x6b
        0x9c
        0xc9
        0x63
        0x6e
        0x50
        0x6c
        0x9b
        0x4c
        0xb0
        0x8e
        0x84
        0x6e
    .end array-data

    :array_27
    .array-data 8
        0x0
        0x403a223b46fdeb53L    # 26.133717
        0x403c6fa53b8e4b88L    # 28.436115
        0x40347e543f1c7582L    # 20.493473
        0x4035ad43393ab431L    # 21.676807
        0x4039949e8815e397L    # 25.580544
        0x40398fd3c3611340L    # 25.561825
        0x4041ada9435ac8a3L    # 35.356728
        0x402eb533b1077469L    # 15.35391
        0x403ef8257c914b16L    # 30.969322
        0x4039fb98a65492ffL    # 25.982798
        0x4037940c4156e265L    # 23.578312
        0x4035022b5a20ddc6L    # 21.008474
        0x4035403eb7cbb3c8L    # 21.250957
        0x4029d51a21ea3593L    # 12.916215
        0x40300e84be40420fL    # 16.056713
        0x40375c6fbd273d5cL    # 23.36108
        0x40409acec41dd1a2L    # 33.209435
        0x4032e21f4b1ee243L    # 18.88329
        0x403c9056605ee569L    # 28.563818
        0x4037a4b242070b8dL    # 23.643345
    .end array-data

    :array_28
    .array-data 8
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
    .end array-data

    :array_29
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2a
    .array-data 8
        0x40a2c00c7e28240bL    # 2400.0244
        0x40a5682d916872b0L    # 2740.089
        0x409e170b780346dcL    # 1925.7612
        0x40a2b3b47ae147aeL    # 2393.8525
        0x40a6b2b74bc6a7f0L    # 2905.358
        0x40a78981e4f765feL    # 3012.7537
        0x40a6709cfaacd9e8L    # 2872.3066
        0x409e0ec395810625L    # 1923.691
        0x40a267d0be0ded29L    # 2355.9077
        0x40a060a8c154c986L    # 2096.3296
        0x409674d758e21965L    # 1437.2103
        0x40a793961e4f7660L    # 3017.7932
        0x40a6cd44189374bcL    # 2918.633
        0x40a63d7fbe76c8b4L    # 2846.7495
        0x4094061460aa64c3L    # 1281.5199
        0x409d04a353f7ced9L    # 1857.1595
        0x40a18a0c7e28240bL    # 2245.0244
        0x40936a1495182a99L    # 1242.5201
        0x409f584c985f06f7L    # 2006.0748
        0x409b583ac710cb29L    # 1750.0574
        0x40a256b9db22d0e5L    # 2347.363
    .end array-data

    :array_2b
    .array-data 8
        0x40715670e2c12ad8L    # 277.40256
        0x407407be22e5de16L    # 320.48392
        0x4074a7ed3d859c8dL    # 330.49542
        0x4069358ef34d6a16L    # 201.6737
        0x407ac8ec226809d5L    # 428.55765
        0x40744ffc3b4f6167L    # 324.99908
        0x4067a8ef88b97785L    # 189.27924
        0x4074bc088509bf9cL    # 331.75208
        0x4067e661a60d4563L    # 191.19942
        0x4074db25c3dee782L    # 333.69672
        0x4075b230dd82fd76L    # 347.13693
        0x4069e5bb98c7e282L    # 207.17915
        0x406bbf7e28240b78L    # 221.98415
        0x4076c54a03c4b09fL    # 364.33057
        0x406d9e1c8216c615L    # 236.94098
        0x40643f41c8216c61L    # 161.97678
        0x406e257bdcf0307fL    # 241.17137
        0x407468bc6a7ef9dbL    # 326.546
        0x40750ddbdf8f4730L    # 336.86618
        0x4073e9fb7e90ff97L    # 318.6239
        0x4068b858b827fa1aL    # 197.76083
    .end array-data

    :array_2c
    .array-data 8
        -0x3fbfef25c3dee782L    # -32.13166
        -0x3fc127f91e646f15L    # -30.843855
        -0x3fbf35af9ebe9c88L    # -33.580578
        -0x3fb000e3de6149c7L    # -63.993046
        -0x3fa971c45cbbc2b9L    # -90.22239
        -0x3fa25a0e7ff583a5L    # -118.592865
        -0x3f9d5da9a8049668L    # -149.07304
        -0x3fc6594046412cf1L    # -25.651363
        -0x3fc37538bcdfefbfL    # -28.542103
        -0x3fc341d798d8a97aL    # -28.742804
        -0x3fb2d557bc7f77afL    # -58.33326
        -0x3fb1686833c6002aL    # -61.18432
        -0x3fb3693e2d6238daL    # -57.17779
        -0x3fa86a22e5de15caL    # -94.34162
        -0x3fa9f2649906cca3L    # -88.21261
        -0x3faaa33a14cec41eL    # -85.44958
        -0x3fa1314af4f0d845L    # -123.2298
        -0x3fa19be47991bc56L    # -121.56418
        -0x3fa31567620ee8d1L    # -115.665565
        -0x3f9d3e7967caea74L    # -150.04768
        -0x3f9dafd1b71758e2L    # -146.50565
    .end array-data

    :array_2d
    .array-data 4
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0x60
        0x7d
        0xc6
        0x51
        0x50
        0x58
        0x96
        0x53
        0xb2
        0x80
        0x79
        0x9b
        0xbc
        0x6f
    .end array-data

    :array_2e
    .array-data 8
        0x0
        0x40385ca9691a75cdL    # 24.36196
        0x404093041cc532a5L    # 33.148563
        0x4037818c3b0c4589L    # 23.506046
        0x402c63d7f51efb6eL    # 14.195007
        0x403d6b588e368f08L    # 29.41932
        0x4040350a02b84125L    # 32.414368
        0x4029e083558a7610L    # 12.938502
        0x404269290257c915L    # 36.821564
        0x4037bd4163779e9dL    # 23.739279
        0x40418797785729b3L    # 35.05931
        0x402b6a47cb70ac3bL    # 13.707579
        0x4038ea773e24febdL    # 24.915882
        0x403172367e414e7fL    # 17.446144
        0x4038dae685db76b4L    # 24.85508
        0x402d9728c79f6662L    # 14.795233
        0x40434a889c1b5419L    # 38.582294
        0x40435c45fe111277L    # 38.720886
        0x402f5d08d4bad7d8L    # 15.681708
        0x403956b93ccd0fe9L    # 25.338764
        0x403af565c2d27807L    # 26.958584
    .end array-data

    :array_2f
    .array-data 8
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
    .end array-data

    :array_30
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x15

    const/16 v1, 0x14

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, 0x43340000    # 180.0f

    iput v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->VELOCITY_COMPLETE_BASIC:F

    const v0, 0x404ccccd    # 3.2f

    iput v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mParticlePerSec:F

    iput v3, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mDirectionCnt:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mDecibel:F

    new-array v0, v1, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_1:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_1:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_1:[D

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_1:[I

    new-array v0, v1, [D

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_1:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_1:[D

    new-array v0, v1, [Z

    fill-array-data v0, :array_6

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_1:[Z

    new-array v0, v1, [D

    fill-array-data v0, :array_7

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_2:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_8

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_2:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_9

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_2:[D

    new-array v0, v1, [I

    fill-array-data v0, :array_a

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_2:[I

    new-array v0, v1, [D

    fill-array-data v0, :array_b

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_2:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_c

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_2:[D

    new-array v0, v1, [Z

    fill-array-data v0, :array_d

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_2:[Z

    new-array v0, v1, [D

    fill-array-data v0, :array_e

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_3:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_f

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_3:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_10

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_3:[D

    new-array v0, v1, [I

    fill-array-data v0, :array_11

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_3:[I

    new-array v0, v1, [D

    fill-array-data v0, :array_12

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_3:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_13

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_3:[D

    new-array v0, v1, [Z

    fill-array-data v0, :array_14

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_3:[Z

    new-array v0, v1, [D

    fill-array-data v0, :array_15

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_4:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_16

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_4:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_17

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_4:[D

    new-array v0, v1, [I

    fill-array-data v0, :array_18

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_4:[I

    new-array v0, v1, [D

    fill-array-data v0, :array_19

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_4:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_1a

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_4:[D

    new-array v0, v1, [Z

    fill-array-data v0, :array_1b

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_4:[Z

    new-array v0, v1, [D

    fill-array-data v0, :array_1c

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_5:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_1d

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_5:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_1e

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_5:[D

    new-array v0, v1, [I

    fill-array-data v0, :array_1f

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_5:[I

    new-array v0, v1, [D

    fill-array-data v0, :array_20

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_5:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_21

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_5:[D

    new-array v0, v1, [Z

    fill-array-data v0, :array_22

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_5:[Z

    new-array v0, v2, [D

    fill-array-data v0, :array_23

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_6:[D

    new-array v0, v2, [D

    fill-array-data v0, :array_24

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_6:[D

    new-array v0, v2, [D

    fill-array-data v0, :array_25

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_6:[D

    new-array v0, v2, [I

    fill-array-data v0, :array_26

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_6:[I

    new-array v0, v2, [D

    fill-array-data v0, :array_27

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_6:[D

    new-array v0, v2, [D

    fill-array-data v0, :array_28

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_6:[D

    new-array v0, v2, [Z

    fill-array-data v0, :array_29

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_6:[Z

    new-array v0, v2, [D

    fill-array-data v0, :array_2a

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_7:[D

    new-array v0, v2, [D

    fill-array-data v0, :array_2b

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_7:[D

    new-array v0, v2, [D

    fill-array-data v0, :array_2c

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_7:[D

    new-array v0, v2, [I

    fill-array-data v0, :array_2d

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_7:[I

    new-array v0, v2, [D

    fill-array-data v0, :array_2e

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_7:[D

    new-array v0, v2, [D

    fill-array-data v0, :array_2f

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_7:[D

    new-array v0, v2, [Z

    fill-array-data v0, :array_30

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_7:[Z

    const/4 v0, 0x7

    new-array v0, v0, [[D

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_1:[D

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_2:[D

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_3:[D

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_4:[D

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_5:[D

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_6:[D

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_7:[D

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes:[[D

    const/4 v0, 0x7

    new-array v0, v0, [[D

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_1:[D

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_2:[D

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_3:[D

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_4:[D

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_5:[D

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_6:[D

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_7:[D

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities:[[D

    const/4 v0, 0x7

    new-array v0, v0, [[D

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_1:[D

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_2:[D

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_3:[D

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_4:[D

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_5:[D

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_6:[D

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_7:[D

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles:[[D

    const/4 v0, 0x7

    new-array v0, v0, [[I

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_1:[I

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_2:[I

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_3:[I

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_4:[I

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_5:[I

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_6:[I

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_7:[I

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas:[[I

    const/4 v0, 0x7

    new-array v0, v0, [[D

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_1:[D

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_2:[D

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_3:[D

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_4:[D

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_5:[D

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_6:[D

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_7:[D

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes:[[D

    const/4 v0, 0x7

    new-array v0, v0, [[D

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_1:[D

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_2:[D

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_3:[D

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_4:[D

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_5:[D

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_6:[D

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_7:[D

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes:[[D

    const/4 v0, 0x7

    new-array v0, v0, [[Z

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_1:[Z

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_2:[Z

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_3:[Z

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_4:[Z

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_5:[Z

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_6:[Z

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_7:[Z

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs:[[Z

    iput-boolean v3, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->isClearView:Z

    new-instance v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView$WeakRefHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView$WeakRefHandler;-><init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mParticleTickHandler:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView$WeakRefHandler;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->init(Landroid/content/Context;)V

    return-void

    nop

    :array_0
    .array-data 8
        0x40a1c62ac083126fL    # 2275.0835
        0x40a61a3c432ca57aL    # 2829.1177
        0x40a7423b7e90ff97L    # 2977.1162
        0x40a1c99edfa43fe6L    # 2276.8103
        0x40a207cb43958106L    # 2307.897
        0x40a3e6643fe5c91dL    # 2547.1958
        0x4098b7dd495182aaL    # 1581.9661
        0x409ab6eb1c432ca5L    # 1709.7296
        0x409352ac3c9eecc0L    # 1236.6682
        0x409eb2e6b50b0f28L    # 1964.7253
        0x40a1d2dcac083127L    # 2281.431
        0x409d79444d013a93L    # 1886.3167
        0x40a06c0189374bc7L    # 2102.003
        0x40a5e3ee147ae148L    # 2801.965
        0x409b3fae7d566cf4L    # 1743.9204
        0x40a46a21a36e2eb2L    # 2613.0657
        0x409d8d09ba5e353fL    # 1891.2595
        0x40953938bac710cbL    # 1358.3054
        0x40a53a4ca57a786cL    # 2717.1497
        0x40a5d6ca2339c0ecL    # 2795.3948
    .end array-data

    :array_1
    .array-data 8
        0x40721cafb7e90ff9L    # 289.7929
        0x4072167640639d5eL    # 289.40387
        0x406a1df1e8e60807L    # 208.93578
        0x407ae0b39c0ebee0L    # 430.04385
        0x40737450b0f27bb3L    # 311.2697
        0x40686483f91e646fL    # 195.14111
        0x406a4318e757928eL    # 210.09679
        0x407372089a027525L    # 311.1271
        0x406a1c8769ec2ce4L    # 208.89153
        0x4075a97ee4e26d48L    # 346.59348
        0x40740acd013a92a3L    # 320.67505
        0x40694f1bc5586445L    # 202.47214
        0x407c384cc2507208L    # 451.51874
        0x40731f2e9ccb7d41L    # 305.94888
        0x40758b90e0221427L    # 344.72287
        0x4074ca6872b020c5L    # 332.6505
        0x4070a04bdba0a527L    # 266.01852
        0x4075f722bbecaab9L    # 351.44598
        0x406abc432ca57a78L    # 213.8832
        0x407552ecfe9b7bf2L    # 341.18286
    .end array-data

    :array_2
    .array-data 8
        -0x3fc052277c45cbbcL    # -31.679085
        -0x3fc405b738e6d15bL    # -27.977673
        -0x3fb32fdcdf698783L    # -57.626072
        -0x3fa85cd5cfaacd9fL    # -94.54945
        -0x3fa11c2a9930be0eL    # -123.5599
        -0x3f9d519fe86833c6L    # -149.44923
        -0x3fc30350e3476295L    # -28.987047
        -0x3fc1706c97d8cf3aL    # -30.560843
        -0x3fc0bc97fa5d28d0L    # -31.263306
        -0x3fb24d7be121ee67L    # -59.394657
        -0x3fb3dccaff6d3309L    # -56.275055
        -0x3faff1dc1e7967cbL    # -64.22094
        -0x3fa86dc6d1e108c4L    # -94.28474
        -0x3fa9d2cbd1244a62L    # -88.70631
        -0x3fa841ddc1e7967dL    # -94.97084
        -0x3fa212a10e022142L    # -119.70892
        -0x3fa1d7e2046c764bL    # -120.62683
        -0x3fa28c2949a56580L    # -117.80998
        -0x3f9dbfbda5119ce0L    # -146.0081
        -0x3f9cdecce1c58256L    # -153.03749
    .end array-data

    :array_3
    .array-data 4
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0x78
        0x86
        0x6e
        0xbf
        0x7f
        0x86
        0x6e
        0x6f
        0x6d
        0x6e
        0x4f
        0x73
        0x6a
        0x7a
    .end array-data

    :array_4
    .array-data 8
        0x402c362bae03b3eaL    # 14.105802
        0x403097ba450acc0cL    # 16.592686
        0x40429514c22ee419L    # 37.164696
        0x4033150d0678c005L    # 19.08223
        0x4041ab23033a4724L    # 35.337006
        0x404013bfc6540cc8L    # 32.15429
        0x402efc0d90e23af3L    # 15.492291
        0x4039239a5a89b952L    # 25.139074
        0x40323ff705857affL    # 18.249863
        0x403f5ae5ffa3b9aeL    # 31.355072
        0x4037c69707182236L    # 23.775742
        0x403461c842fa5094L    # 20.381962
        0x4040c416f0068db9L    # 33.53195
        0x4035d0f7b9e060feL    # 21.81628
        0x40339e40420f6f09L    # 19.618168
        0x40305d4c22ee4192L    # 16.364443
        0x4035fc8a9bcfd4bfL    # 21.98649
        0x402fd03dbc23315dL    # 15.906721
        0x40404eff7dfa00e2L    # 32.617172
        0x402f30a6b93ccd10L    # 15.595022
    .end array-data

    :array_5
    .array-data 8
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
    .end array-data

    :array_6
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_7
    .array-data 8
        0x40a4119bc01a36e3L    # 2568.8042
        0x4093471b3d07c84bL    # 1233.7766
        0x40a897307c84b5ddL    # 3147.5947
        0x4096f08346dc5d64L    # 1468.1282
        0x40a1c684c2f837b5L    # 2275.2593
        0x40a3501ce075f6fdL    # 2472.0564
        0x409efaa809d49518L    # 1982.6641
        0x40a74ee0c49ba5e3L    # 2983.439
        0x40a317fdd97f62b7L    # 2443.9958
        0x40a4b19559b3d07dL    # 2648.7917
        0x40a411ed5cfaacdaL    # 2568.9636
        0x4091b101205bc01aL    # 1132.2511
        0x40a2df463f141206L    # 2415.6372
        0x40915633b645a1cbL    # 1109.5505
        0x40a8e407ae147ae1L    # 3186.015
        0x40a013463f141206L    # 2057.6372
        0x40a3d4205bc01a37L    # 2538.0632
        0x40a5cbc779a6b50bL    # 2789.8896
        0x409988ea161e4f76L    # 1634.2286
        0x409d8eafb7e90ff9L    # 1891.6716
    .end array-data

    :array_8
    .array-data 8
        0x406dcf7af640639dL    # 238.48376
        0x407194cccccccccdL    # 281.3
        0x4067c88461f9f01cL    # 190.26616
        0x407b0c59b3d07c85L    # 432.7719
        0x406a6a28f5c28f5cL    # 211.3175
        0x40703d26809d4952L    # 259.8219
        0x40759421426fe719L    # 345.25812
        0x4072607b9e060fe4L    # 294.03018
        0x40763ff0d844d014L    # 355.9963
        0x406bac869835158cL    # 221.39143
        0x406e2e98dcdb37caL    # 241.45616
        0x406caa9f16b11c6dL    # 229.33192
        0x4074c19096bb98c8L    # 332.0978
        0x407c66d681ecd4aaL    # 454.42737
        0x407684807dd44135L    # 360.28137
        0x407577ec02f2f987L    # 343.49512
        0x406ae2a1b5c7cd8aL    # 215.08224
        0x406c5421ea359360L    # 226.62914
        0x40735a5fa43fe5c9L    # 309.64835
        0x407386ca8198f1d4L    # 312.42444
    .end array-data

    :array_9
    .array-data 8
        -0x3fc3ff7c243dcceaL    # -28.002012
        -0x3fbf682f9ca5bd94L    # -33.186047
        -0x3fb041f8a0902de0L    # -63.4846
        -0x3fa8d5e15ca6ca04L    # -92.65812
        -0x3fa1af460aa64c30L    # -121.26135
        -0x3f9db338ef34d6a1L    # -146.3993
        -0x3fc64c78854cdb7bL    # -25.701286
        -0x3fc12c0c8472c0e8L    # -30.827934
        -0x3fbfe297635e742aL    # -32.229755
        -0x3fb1c750b0f27bb3L    # -60.44285
        -0x3fb2a3a41e57d9dcL    # -58.721554
        -0x3fb3676b00ffda40L    # -57.192047
        -0x3fa8fe04c0592104L    # -92.03096
        -0x3faa0c7fa1a0cf18L    # -87.80471
        -0x3fa901e939eadd59L    # -91.97014
        -0x3fa1a3dc486ad2ddL    # -121.43968
        -0x3fa289e4f765fd8bL    # -117.8454
        -0x3fa2e4bb6ed67770L    # -116.42606
        -0x3f9db86fbd273d5cL    # -146.23636
        -0x3f9d48ea9e6eeb70L    # -149.72136
    .end array-data

    :array_a
    .array-data 4
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xc3
        0x63
        0x6f
        0xb1
        0x8e
        0xb6
        0xa4
        0x9f
        0xb7
        0x8c
        0xb7
        0x66
        0x7a
        0x5a
    .end array-data

    :array_b
    .array-data 8
        -0x3fc0fe38da3c2118L    # -31.006945
        0x4042af310129cbabL    # 37.368683
        0x40327a047d3d4281L    # 18.476631
        0x40422fc7de5082cfL    # 36.373287
        0x402e846e08f21709L    # 15.258652
        0x4040f6bcbe61cfffL    # 33.927635
        0x403ab1c432ca57a8L    # 26.6944
        0x4039425ffa3b9ae1L    # 25.259277
        0x4033b44e3ffef391L    # 19.704319
        0x4037ecffb8b26395L    # 23.925777
        0x4037bef2f9873ffbL    # 23.745895
        0x4040bbf601797cc4L    # 33.468445
        0x404287e23f24d8fdL    # 37.061592
        0x40348934bd76ee74L    # 20.535961
        0x403ef4d61b2a27f2L    # 30.956392
        0x403c117d7c2ca149L    # 28.068321
        0x403ea6d5e071c53fL    # 30.651701
        0x403a3e873bc903eaL    # 26.244251
        0x4030694b380cb6c8L    # 16.411304
        0x40381f2ef0ae5365L    # 24.12181
    .end array-data

    :array_c
    .array-data 8
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
    .end array-data

    :array_d
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_e
    .array-data 8
        0x40993d80346dc5d6L    # 1615.3752
        0x409a4e2d288ce704L    # 1683.5441
        0x40a270b2b020c49cL    # 2360.349
        0x40a02d0ff9724745L    # 2070.5312
        0x40a90483fe5c91d1L    # 3202.2578
        0x4094fd887fcb923aL    # 1343.3833
        0x40a3ac379a6b50b1L    # 2518.1086
        0x409db0cd1b71758eL    # 1900.2003
        0x40a5ef8d1b71758eL    # 2807.7756
        0x409af0f79a6b50b1L    # 1724.2418
        0x4099ec46a7ef9db2L    # 1659.069
        0x40915d25c91d14e4L    # 1111.2869
        0x4092b544ea4a8c15L    # 1197.3173
        0x40a978e305532618L    # 3260.4434
        0x40a8a6dbda5119ceL    # 3155.4294
        0x40a030a28240b780L    # 2072.3174
        0x4095f65182a9930cL    # 1405.5796
        0x4091c247e28240b8L    # 1136.5702
        0x4090d4d72474538fL    # 1077.2101
        0x40912ed3f7ced917L    # 1099.707
    .end array-data

    :array_f
    .array-data 8
        0x406a7b4aa10e0221L    # 211.85286
        0x4067136c3760bf5dL    # 184.60696
        0x40735d1fbe76c8b4L    # 309.82025
        0x40726e5d82fd75e2L    # 294.89783
        0x406b98e425aee632L    # 220.77785
        0x4072e6bda5119ce0L    # 302.4213
        0x4071a3a1426fe719L    # 282.22687
        0x40730156c0d6f545L    # 304.08368
        0x40726426809d4952L    # 294.2594
        0x406d577d566cf41fL    # 234.73405
        0x40766c8902de00d2L    # 358.78345
        0x4075d25b81301648L    # 349.14734
        0x406639d4024b33dbL    # 177.80713
        0x40616c5fd8adab9fL    # 139.3867
        0x407b0d641b328b6eL    # 432.83694
        0x407301ae147ae148L    # 304.105
        0x406cc96777079e5aL    # 230.29388
        0x4071fb9cc100e6b0L    # 287.72577
        0x4067331dbca9691aL    # 185.59738
        0x40743ce1b089a027L    # 323.8051
    .end array-data

    :array_10
    .array-data 8
        -0x3fc16f784662bae0L    # -30.564571
        -0x3fc5cdf41aef6f8fL    # -26.195494
        -0x3fb060afdda8bd23L    # -63.244633
        -0x3fa8645bc01a36e3L    # -94.4319
        -0x3fa2939db22d0e56L    # -117.6935
        -0x3f9dbcc947064ecfL    # -146.10043
        -0x3fc6f1081c2e33f0L    # -25.05847
        -0x3fc15f9ae0c17657L    # -30.626543
        -0x3fbec469d7342edcL    # -34.46552
        -0x3fb082398201cd60L    # -62.98262
        -0x3fb061329c347e8dL    # -63.240643
        -0x3fb2068ac5c13fd1L    # -59.94889
        -0x3fa967525460aa65L    # -90.3856
        -0x3fa95fac710cb296L    # -90.5051
        -0x3fa9d0604189374cL    # -88.744125
        -0x3fa3388d002e2329L    # -115.116394
        -0x3fa2afb341e14be0L    # -117.254684
        -0x3fa12fe0221426feL    # -123.251945
        -0x3f9cb860aa64c2f8L    # -154.2382
        -0x3f9d464a8c154c98L    # -149.8034
    .end array-data

    :array_11
    .array-data 4
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xa1
        0xb6
        0x5f
        0xc1
        0xa8
        0x4f
        0x81
        0x5f
        0xca
        0x83
        0x66
        0xba
        0x67
        0x71
    .end array-data

    :array_12
    .array-data 8
        0x4029e1abb01c92deL    # 12.940763
        0x403f4a5edd052935L    # 31.29051
        0x404201fd60e94ee4L    # 36.015545
        0x403388461f9f01b8L    # 19.53232
        0x404106b1704ff434L    # 34.05229
        0x403d901fd9ba1b19L    # 29.562986
        0x402934d594f26aecL    # 12.603192
        0x4041ec1743e963dcL    # 35.84446
        0x403c215f02c4d65eL    # 28.130356
        0x403b2947e06961c3L    # 27.161253
        0x4031aca6fc58ab93L    # 17.674423
        0x402eccb7f5a5332bL    # 15.399841
        0x402a9cdea033e78eL    # 13.306386
        0x40394d9c8c9320daL    # 25.30317
        0x4037723704790b85L    # 23.446152
        0x4041149cdc443915L    # 34.161037
        0x402b1b3d6c721922L    # 13.553203
        0x403b7871c53f39d2L    # 27.470486
        0x4029264f11b60ae9L    # 12.574822
        0x402e6ce789e774efL    # 15.212704
    .end array-data

    :array_13
    .array-data 8
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
    .end array-data

    :array_14
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_15
    .array-data 8
        0x40a33ac95e9e1b09L    # 2461.3933
        0x4093ff516872b021L    # 1279.8295
        0x40a59f4ccccccccdL    # 2767.65
        0x40a617bc01a36e2fL    # 2827.8672
        0x40a2c2029c779a6bL    # 2401.0051
        0x4095486c083126e9L    # 1362.1055
        0x4090be798c7e2824L    # 1071.6187
        0x4092fea9fbe76c8bL    # 1215.666
        0x40959436c8b43958L    # 1381.0535
        0x409c9faa9930be0eL    # 1831.9166
        0x409ed6c84b5dcc64L    # 1973.6956
        0x40a2265182a9930cL    # 2323.1592
        0x40a225fbc01a36e3L    # 2322.9917
        0x40a961889a027525L    # 3248.7668
        0x4092740c154c985fL    # 1181.0118
        0x409a11b0be0ded29L    # 1668.4226
        0x4095c00538ef34d7L    # 1392.0051
        0x40a5f33a858793deL    # 2809.6143
        0x40a5778ff9724745L    # 2747.7812
        0x409f5f172474538fL    # 2007.7726
    .end array-data

    :array_16
    .array-data 8
        0x4075ca3afb7e9100L    # 348.6394
        0x40746440639d5e4aL    # 326.26572
        0x406ae3f32378ab0dL    # 215.12343
        0x40787e32df505d10L    # 391.88742
        0x4075313e0370cdc8L    # 339.07764
        0x406feb41dd1a21eaL    # 255.35179
        0x4070f8335d249e45L    # 271.51254
        0x4073d9031ceaf252L    # 317.56326
        0x40699558b827fa1aL    # 204.66708
        0x4072488644523f68L    # 292.53278
        0x40714a26bf8769ecL    # 276.63446
        0x406f220c5eb313beL    # 249.06401
        0x406fcff41f212d77L    # 254.49855
        0x406d5f639d5e4a38L    # 234.98091
        0x4074115532617c1cL    # 321.0833
        0x4067df18a86d71f3L    # 190.97176
        0x40766fd0bb6ed677L    # 358.98846
        0x40752414c447c30dL    # 338.25507
        0x406b2dcca2db61bbL    # 217.43123
        0x4075d2667b5f1befL    # 349.15002
    .end array-data

    :array_17
    .array-data 8
        -0x3fc20294467381d8L    # -29.989925
        -0x3fc11d6da0168b5dL    # -30.885046
        -0x3faff79945b6c376L    # -64.13127
        -0x3fa903ff583a53b9L    # -91.93754
        -0x3fa11874538ef34dL    # -123.6179
        -0x3f9cd6f4f0d844d0L    # -153.2826
        -0x3fc3302f2f987400L    # -28.81178
        -0x3fc50211233df2aaL    # -26.991926
        -0x3fc0e966e008e9b4L    # -31.088274
        -0x3fafe9129888f862L    # -64.35824
        -0x3fb0dc52bd3c3611L    # -62.278725
        -0x3fb3613083558a76L    # -57.240707
        -0x3faa14d6a161e4f7L    # -87.6744
        -0x3fa8d7a5657fb69aL    # -92.63053
        -0x3fa9b2bf1e8e6080L    # -89.207085
        -0x3fa3348a1dfb938aL    # -115.17907
        -0x3fa10494ff0025c0L    # -123.928406
        -0x3fa1171a21ea3593L    # -123.63903
        -0x3f9cb9549f94855eL    # -154.20842
        -0x3f9d1b8216c61523L    # -151.14037
    .end array-data

    :array_18
    .array-data 4
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xba
        0xa4
        0xa6
        0xbc
        0xa3
        0xb0
        0x54
        0x97
        0xaf
        0x69
        0x70
        0x81
        0xca
        0x5a
    .end array-data

    :array_19
    .array-data 8
        0x4043774ddf86e3b4L    # 38.932064
        0x402cc8110a137f39L    # 14.390755
        0x403c5ea65cf67b1cL    # 28.369726
        0x40321ee59af9ebeaL    # 18.120691
        0x4038a1fc8f32378bL    # 24.63276
        0x40325274080f98faL    # 18.322083
        0x4037f80f88333fc8L    # 23.968987
        0x40396f2745bf26f2L    # 25.434193
        0x4040a3e3c105186eL    # 33.280388
        0x4031c32c40d0aaa8L    # 17.762394
        0x4036e6e58a32f449L    # 22.90194
        0x4031c60e6299524cL    # 17.773657
        0x40417b7af640639dL    # 34.96469
        0x4043f8b26394faceL    # 39.942944
        0x4042c7d1782d3847L    # 37.56108
        0x403579f7c6759ab7L    # 21.476437
        0x403024d25edd0529L    # 16.143835
        0x40425e1e81cb46bbL    # 36.735306
        0x403aa30e3cd9a522L    # 26.636936
        0x40414ee147ae147bL    # 34.61625
    .end array-data

    :array_1a
    .array-data 8
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
    .end array-data

    :array_1b
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1c
    .array-data 8
        0x409aad496bb98c7eL    # 1707.3217
        0x40a3bef381d7dbf5L    # 2527.4756
        0x409d95c20c49ba5eL    # 1893.4395
        0x40a0e15b7e90ff97L    # 2160.6787
        0x40a276b765fd8adbL    # 2363.3582
        0x40a61d5525460aa6L    # 2830.6663
        0x40916611eb851eb8L    # 1113.5175
        0x40a65b46c226809dL    # 2861.6382
        0x409acae1e4f765feL    # 1714.7206
        0x409cf669930be0dfL    # 1853.6031
        0x4096df13c3611340L    # 1463.7693
        0x40991d25fd8adabaL    # 1607.2871
        0x4099e6ae48e8a71eL    # 1657.6702
        0x4094db997f62b6aeL    # 1334.8999
        0x409f95c96bb98c7eL    # 2021.4467
        0x40a011e5460aa64cL    # 2056.9478
        0x40a23dac083126e9L    # 2334.836
        0x4092b78a57a786c2L    # 1197.8851
        0x40a2a99141205bc0L    # 2388.7837
        0x4094b798fc504817L    # 1325.8994
    .end array-data

    :array_1d
    .array-data 8
        0x407334b37c99ae92L    # 307.29382
        0x4074714d4024b33eL    # 327.08136
        0x4066e595421c0443L    # 183.17447
        0x407a550f27bb2fecL    # 421.3162
        0x40766a48fd9fd36fL    # 358.64282
        0x406f8e6594af4f0eL    # 252.4499
        0x407576c710cb295fL    # 343.4236
        0x406f2499c38b04abL    # 249.14377
        0x406b18c8605681edL    # 216.77446
        0x406f113d46b26bf8L    # 248.53873
        0x407095663c74fb55L    # 265.33746
        0x4071c979a6b50b0fL    # 284.5922
        0x406c249595feda66L    # 225.14326
        0x407c5e9dfb9389b5L    # 453.91357
        0x407231685db76b3cL    # 291.08798
        0x406e0056d5cfaaceL    # 240.0106
        0x4066eb1a60d4562eL    # 183.34697
        0x4072e2185f06f694L    # 302.13095
        0x4070c156238da3c2L    # 268.08353
        0x4070513f141205bcL    # 261.0779
    .end array-data

    :array_1e
    .array-data 8
        -0x3fbf270c88a47ed0L    # -33.69493
        -0x3fc1e2d43d03968dL    # -30.113949
        -0x3fb08f22424a276bL    # -62.881767
        -0x3fa95faf8df7a4e8L    # -90.50491
        -0x3fa0c3e2d6238da4L    # -124.93928
        -0x3f9dc021426fe719L    # -145.99594
        -0x3fc1ee6fc58ab92cL    # -30.068607
        -0x3fc449adb8348f54L    # -27.712193
        -0x3fc620029f16b11cL    # -25.87496
        -0x3fb26c4e3ffef391L    # -59.153862
        -0x3fb1b34395810625L    # -60.5995
        -0x3fafe90b8cfbfc65L    # -64.35867
        -0x3fa94b97a24894c4L    # -90.81887
        -0x3fa9c972ef0ae536L    # -88.85236
        -0x3fa93873abc94706L    # -91.11794
        -0x3fa2b9f99c38b04bL    # -117.09414
        -0x3fa241abc947064fL    # -118.97389
        -0x3fa0eeacc0bdcad1L    # -124.270706
        -0x3f9cbcfc504816f0L    # -154.0942
        -0x3f9d40e87d2c7b89L    # -149.97162
    .end array-data

    :array_1f
    .array-data 4
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0x9b
        0xaa
        0x54
        0x7d
        0xa1
        0xc7
        0xc7
        0xad
        0x87
        0x68
        0xab
        0x79
        0x53
        0xc4
    .end array-data

    :array_20
    .array-data 8
        0x4038770e7ff583a5L    # 24.465065
        0x403f1a83c297bfa5L    # 31.103573
        0x4043995c42203600L    # 39.198128
        0x402fae7903211cb0L    # 15.840767
        0x403214471b478423L    # 18.07921
        0x4030e41d9f4d37c1L    # 16.891077
        0x4042b61ede1198afL    # 37.422817
        0x4033e6337a80cf9eL    # 19.899223
        0x4038c917f84449dcL    # 24.785522
        0x40344596c82e019bL    # 20.271832
        0x402964ee392e1ef7L    # 12.69713
        0x4041ecba40d90e24L    # 35.849434
        0x40374707bfe7e1fcL    # 23.277462
        0x403c12c13b9f127fL    # 28.073261
        0x4042a8109d0635a4L    # 37.313007
        0x402b49d9f4d37c13L    # 13.644241
        0x4042666202539757L    # 36.799866
        0x403cd502ff8ec0f9L    # 28.832077
        0x40419d6d43d03969L    # 35.229897
        0x4030dfb480a5accdL    # 16.873848
    .end array-data

    :array_21
    .array-data 8
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
    .end array-data

    :array_22
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_23
    .array-data 8
        0x40a2c00c7e28240bL    # 2400.0244
        0x409bcf18793dd97fL    # 1779.7739
        0x40a2c6b6e2eb1c43L    # 2403.3572
        0x409f5bf5a858793eL    # 2006.9899
        0x40a6a6b923a29c78L    # 2899.3616
        0x409be7b2474538efL    # 1785.9241
        0x40a1af674538ef35L    # 2263.7017
        0x40a593ac083126e9L    # 2761.836
        0x409663e3a29c779aL    # 1432.9723
        0x40986d4fdf3b645aL    # 1563.328
        0x40a3697edfa43fe6L    # 2484.7478
        0x40a2679b22d0e560L    # 2355.803
        0x40a2bdaaa64c2f83L    # 2398.8333
        0x40a066d4a2339c0fL    # 2099.4153
        0x409e88bf97247454L    # 1954.1871
        0x40a6ec96bb98c7e3L    # 2934.2944
        0x40a1773fbe76c8b4L    # 2235.6245
        0x40a2de437b4a233aL    # 2415.1318
        0x4094c722339c0ebfL    # 1329.7834
        0x40a27ded916872b0L    # 2366.964
        0x40950c5cc63f1412L    # 1347.0906
    .end array-data

    :array_24
    .array-data 8
        0x40715670e2c12ad8L    # 277.40256
        0x406d9b28b6d86ec1L    # 236.84872
        0x406a2635fc3b4f61L    # 209.19409
        0x4076853b83cf2cf9L    # 360.32703
        0x407972fd60e94ee4L    # 407.18686
        0x40680e3d5bab2181L    # 192.44499
        0x40740594467381d8L    # 320.3487
        0x407142bcd35a8588L    # 276.1711
        0x40740086594af4f1L    # 320.0328
        0x4075e8b702602c91L    # 350.54468
        0x406fad35158b8280L    # 253.41273
        0x406b37fb69984a0eL    # 217.74944
        0x40691036b8f9b131L    # 200.50668
        0x407c7de59f2ba9d2L    # 455.86856
        0x4075b8afb7e90ff9L    # 347.5429
        0x406c4acd9e83e426L    # 226.3376
        0x4073cf4e3bcd35a8L    # 316.9566
        0x406c1a995aaf78ffL    # 224.83122
        0x40752d6b1c432ca5L    # 338.83865
        0x40737ffc3b4f6167L    # 311.99908
        0x40763f7b00bcbe62L    # 355.96753
    .end array-data

    :array_25
    .array-data 8
        -0x3fbfef25c3dee782L    # -32.13166
        -0x3fc5aaff7dfa00e2L    # -26.332039
        -0x3fc25db5fa22706dL    # -29.633942
        -0x3fafc366f9335d25L    # -64.94684
        -0x3faa3fdb22d0e560L    # -87.00225
        -0x3fa270f156191149L    # -118.23527
        -0x3f9d9afd9fd36f7eL    # -147.15654
        -0x3fc44d76bc1effa0L    # -27.697407
        -0x3fc5d5945b6c3761L    # -26.165705
        -0x3fc23a1e3eaf6838L    # -29.772976
        -0x3fb3ec5e80bed741L    # -56.153366
        -0x3fb318b04ab606b8L    # -57.80712
        -0x3fb36a0841ede11aL    # -57.171623
        -0x3faaa2d441355476L    # -85.455795
        -0x3faa69b645a1cac1L    # -86.34825
        -0x3faa68c3760bf5d8L    # -86.36307
        -0x3fa128e4e26d4802L    # -123.36103
        -0x3fa1ddbb83cf2cf9L    # -120.53543
        -0x3fa2a7187e7c06e2L    # -117.38913
        -0x3f9d50f5989df117L    # -149.47002
        -0x3f9d275810624dd3L    # -150.7705
    .end array-data

    :array_26
    .array-data 4
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0x5f
        0x6b
        0x9c
        0xc9
        0x63
        0x6e
        0x50
        0x6c
        0x9b
        0x4c
        0xb0
        0x8e
        0x84
        0x6e
    .end array-data

    :array_27
    .array-data 8
        0x0
        0x403a223b46fdeb53L    # 26.133717
        0x403c6fa53b8e4b88L    # 28.436115
        0x40347e543f1c7582L    # 20.493473
        0x4035ad43393ab431L    # 21.676807
        0x4039949e8815e397L    # 25.580544
        0x40398fd3c3611340L    # 25.561825
        0x4041ada9435ac8a3L    # 35.356728
        0x402eb533b1077469L    # 15.35391
        0x403ef8257c914b16L    # 30.969322
        0x4039fb98a65492ffL    # 25.982798
        0x4037940c4156e265L    # 23.578312
        0x4035022b5a20ddc6L    # 21.008474
        0x4035403eb7cbb3c8L    # 21.250957
        0x4029d51a21ea3593L    # 12.916215
        0x40300e84be40420fL    # 16.056713
        0x40375c6fbd273d5cL    # 23.36108
        0x40409acec41dd1a2L    # 33.209435
        0x4032e21f4b1ee243L    # 18.88329
        0x403c9056605ee569L    # 28.563818
        0x4037a4b242070b8dL    # 23.643345
    .end array-data

    :array_28
    .array-data 8
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
    .end array-data

    :array_29
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2a
    .array-data 8
        0x40a2c00c7e28240bL    # 2400.0244
        0x40a5682d916872b0L    # 2740.089
        0x409e170b780346dcL    # 1925.7612
        0x40a2b3b47ae147aeL    # 2393.8525
        0x40a6b2b74bc6a7f0L    # 2905.358
        0x40a78981e4f765feL    # 3012.7537
        0x40a6709cfaacd9e8L    # 2872.3066
        0x409e0ec395810625L    # 1923.691
        0x40a267d0be0ded29L    # 2355.9077
        0x40a060a8c154c986L    # 2096.3296
        0x409674d758e21965L    # 1437.2103
        0x40a793961e4f7660L    # 3017.7932
        0x40a6cd44189374bcL    # 2918.633
        0x40a63d7fbe76c8b4L    # 2846.7495
        0x4094061460aa64c3L    # 1281.5199
        0x409d04a353f7ced9L    # 1857.1595
        0x40a18a0c7e28240bL    # 2245.0244
        0x40936a1495182a99L    # 1242.5201
        0x409f584c985f06f7L    # 2006.0748
        0x409b583ac710cb29L    # 1750.0574
        0x40a256b9db22d0e5L    # 2347.363
    .end array-data

    :array_2b
    .array-data 8
        0x40715670e2c12ad8L    # 277.40256
        0x407407be22e5de16L    # 320.48392
        0x4074a7ed3d859c8dL    # 330.49542
        0x4069358ef34d6a16L    # 201.6737
        0x407ac8ec226809d5L    # 428.55765
        0x40744ffc3b4f6167L    # 324.99908
        0x4067a8ef88b97785L    # 189.27924
        0x4074bc088509bf9cL    # 331.75208
        0x4067e661a60d4563L    # 191.19942
        0x4074db25c3dee782L    # 333.69672
        0x4075b230dd82fd76L    # 347.13693
        0x4069e5bb98c7e282L    # 207.17915
        0x406bbf7e28240b78L    # 221.98415
        0x4076c54a03c4b09fL    # 364.33057
        0x406d9e1c8216c615L    # 236.94098
        0x40643f41c8216c61L    # 161.97678
        0x406e257bdcf0307fL    # 241.17137
        0x407468bc6a7ef9dbL    # 326.546
        0x40750ddbdf8f4730L    # 336.86618
        0x4073e9fb7e90ff97L    # 318.6239
        0x4068b858b827fa1aL    # 197.76083
    .end array-data

    :array_2c
    .array-data 8
        -0x3fbfef25c3dee782L    # -32.13166
        -0x3fc127f91e646f15L    # -30.843855
        -0x3fbf35af9ebe9c88L    # -33.580578
        -0x3fb000e3de6149c7L    # -63.993046
        -0x3fa971c45cbbc2b9L    # -90.22239
        -0x3fa25a0e7ff583a5L    # -118.592865
        -0x3f9d5da9a8049668L    # -149.07304
        -0x3fc6594046412cf1L    # -25.651363
        -0x3fc37538bcdfefbfL    # -28.542103
        -0x3fc341d798d8a97aL    # -28.742804
        -0x3fb2d557bc7f77afL    # -58.33326
        -0x3fb1686833c6002aL    # -61.18432
        -0x3fb3693e2d6238daL    # -57.17779
        -0x3fa86a22e5de15caL    # -94.34162
        -0x3fa9f2649906cca3L    # -88.21261
        -0x3faaa33a14cec41eL    # -85.44958
        -0x3fa1314af4f0d845L    # -123.2298
        -0x3fa19be47991bc56L    # -121.56418
        -0x3fa31567620ee8d1L    # -115.665565
        -0x3f9d3e7967caea74L    # -150.04768
        -0x3f9dafd1b71758e2L    # -146.50565
    .end array-data

    :array_2d
    .array-data 4
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0x60
        0x7d
        0xc6
        0x51
        0x50
        0x58
        0x96
        0x53
        0xb2
        0x80
        0x79
        0x9b
        0xbc
        0x6f
    .end array-data

    :array_2e
    .array-data 8
        0x0
        0x40385ca9691a75cdL    # 24.36196
        0x404093041cc532a5L    # 33.148563
        0x4037818c3b0c4589L    # 23.506046
        0x402c63d7f51efb6eL    # 14.195007
        0x403d6b588e368f08L    # 29.41932
        0x4040350a02b84125L    # 32.414368
        0x4029e083558a7610L    # 12.938502
        0x404269290257c915L    # 36.821564
        0x4037bd4163779e9dL    # 23.739279
        0x40418797785729b3L    # 35.05931
        0x402b6a47cb70ac3bL    # 13.707579
        0x4038ea773e24febdL    # 24.915882
        0x403172367e414e7fL    # 17.446144
        0x4038dae685db76b4L    # 24.85508
        0x402d9728c79f6662L    # 14.795233
        0x40434a889c1b5419L    # 38.582294
        0x40435c45fe111277L    # 38.720886
        0x402f5d08d4bad7d8L    # 15.681708
        0x403956b93ccd0fe9L    # 25.338764
        0x403af565c2d27807L    # 26.958584
    .end array-data

    :array_2f
    .array-data 8
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
    .end array-data

    :array_30
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x15

    const/16 v1, 0x14

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/high16 v0, 0x43340000    # 180.0f

    iput v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->VELOCITY_COMPLETE_BASIC:F

    const v0, 0x404ccccd    # 3.2f

    iput v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mParticlePerSec:F

    iput v3, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mDirectionCnt:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mDecibel:F

    new-array v0, v1, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_1:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_1:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_1:[D

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_1:[I

    new-array v0, v1, [D

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_1:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_1:[D

    new-array v0, v1, [Z

    fill-array-data v0, :array_6

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_1:[Z

    new-array v0, v1, [D

    fill-array-data v0, :array_7

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_2:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_8

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_2:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_9

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_2:[D

    new-array v0, v1, [I

    fill-array-data v0, :array_a

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_2:[I

    new-array v0, v1, [D

    fill-array-data v0, :array_b

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_2:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_c

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_2:[D

    new-array v0, v1, [Z

    fill-array-data v0, :array_d

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_2:[Z

    new-array v0, v1, [D

    fill-array-data v0, :array_e

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_3:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_f

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_3:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_10

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_3:[D

    new-array v0, v1, [I

    fill-array-data v0, :array_11

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_3:[I

    new-array v0, v1, [D

    fill-array-data v0, :array_12

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_3:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_13

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_3:[D

    new-array v0, v1, [Z

    fill-array-data v0, :array_14

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_3:[Z

    new-array v0, v1, [D

    fill-array-data v0, :array_15

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_4:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_16

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_4:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_17

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_4:[D

    new-array v0, v1, [I

    fill-array-data v0, :array_18

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_4:[I

    new-array v0, v1, [D

    fill-array-data v0, :array_19

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_4:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_1a

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_4:[D

    new-array v0, v1, [Z

    fill-array-data v0, :array_1b

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_4:[Z

    new-array v0, v1, [D

    fill-array-data v0, :array_1c

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_5:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_1d

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_5:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_1e

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_5:[D

    new-array v0, v1, [I

    fill-array-data v0, :array_1f

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_5:[I

    new-array v0, v1, [D

    fill-array-data v0, :array_20

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_5:[D

    new-array v0, v1, [D

    fill-array-data v0, :array_21

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_5:[D

    new-array v0, v1, [Z

    fill-array-data v0, :array_22

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_5:[Z

    new-array v0, v2, [D

    fill-array-data v0, :array_23

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_6:[D

    new-array v0, v2, [D

    fill-array-data v0, :array_24

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_6:[D

    new-array v0, v2, [D

    fill-array-data v0, :array_25

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_6:[D

    new-array v0, v2, [I

    fill-array-data v0, :array_26

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_6:[I

    new-array v0, v2, [D

    fill-array-data v0, :array_27

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_6:[D

    new-array v0, v2, [D

    fill-array-data v0, :array_28

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_6:[D

    new-array v0, v2, [Z

    fill-array-data v0, :array_29

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_6:[Z

    new-array v0, v2, [D

    fill-array-data v0, :array_2a

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_7:[D

    new-array v0, v2, [D

    fill-array-data v0, :array_2b

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_7:[D

    new-array v0, v2, [D

    fill-array-data v0, :array_2c

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_7:[D

    new-array v0, v2, [I

    fill-array-data v0, :array_2d

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_7:[I

    new-array v0, v2, [D

    fill-array-data v0, :array_2e

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_7:[D

    new-array v0, v2, [D

    fill-array-data v0, :array_2f

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_7:[D

    new-array v0, v2, [Z

    fill-array-data v0, :array_30

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_7:[Z

    const/4 v0, 0x7

    new-array v0, v0, [[D

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_1:[D

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_2:[D

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_3:[D

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_4:[D

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_5:[D

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_6:[D

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes_7:[D

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLifeTimes:[[D

    const/4 v0, 0x7

    new-array v0, v0, [[D

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_1:[D

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_2:[D

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_3:[D

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_4:[D

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_5:[D

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_6:[D

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities_7:[D

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mVelocities:[[D

    const/4 v0, 0x7

    new-array v0, v0, [[D

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_1:[D

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_2:[D

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_3:[D

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_4:[D

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_5:[D

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_6:[D

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles_7:[D

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAngles:[[D

    const/4 v0, 0x7

    new-array v0, v0, [[I

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_1:[I

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_2:[I

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_3:[I

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_4:[I

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_5:[I

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_6:[I

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas_7:[I

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mAlphas:[[I

    const/4 v0, 0x7

    new-array v0, v0, [[D

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_1:[D

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_2:[D

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_3:[D

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_4:[D

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_5:[D

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_6:[D

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes_7:[D

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSizes:[[D

    const/4 v0, 0x7

    new-array v0, v0, [[D

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_1:[D

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_2:[D

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_3:[D

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_4:[D

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_5:[D

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_6:[D

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes_7:[D

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mInitSizes:[[D

    const/4 v0, 0x7

    new-array v0, v0, [[Z

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_1:[Z

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_2:[Z

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_3:[Z

    aput-object v1, v0, v5

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_4:[Z

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_5:[Z

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_6:[Z

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs_7:[Z

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mIsMetaballs:[[Z

    iput-boolean v3, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->isClearView:Z

    new-instance v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView$WeakRefHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView$WeakRefHandler;-><init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mParticleTickHandler:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView$WeakRefHandler;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->init(Landroid/content/Context;)V

    return-void

    nop

    :array_0
    .array-data 8
        0x40a1c62ac083126fL    # 2275.0835
        0x40a61a3c432ca57aL    # 2829.1177
        0x40a7423b7e90ff97L    # 2977.1162
        0x40a1c99edfa43fe6L    # 2276.8103
        0x40a207cb43958106L    # 2307.897
        0x40a3e6643fe5c91dL    # 2547.1958
        0x4098b7dd495182aaL    # 1581.9661
        0x409ab6eb1c432ca5L    # 1709.7296
        0x409352ac3c9eecc0L    # 1236.6682
        0x409eb2e6b50b0f28L    # 1964.7253
        0x40a1d2dcac083127L    # 2281.431
        0x409d79444d013a93L    # 1886.3167
        0x40a06c0189374bc7L    # 2102.003
        0x40a5e3ee147ae148L    # 2801.965
        0x409b3fae7d566cf4L    # 1743.9204
        0x40a46a21a36e2eb2L    # 2613.0657
        0x409d8d09ba5e353fL    # 1891.2595
        0x40953938bac710cbL    # 1358.3054
        0x40a53a4ca57a786cL    # 2717.1497
        0x40a5d6ca2339c0ecL    # 2795.3948
    .end array-data

    :array_1
    .array-data 8
        0x40721cafb7e90ff9L    # 289.7929
        0x4072167640639d5eL    # 289.40387
        0x406a1df1e8e60807L    # 208.93578
        0x407ae0b39c0ebee0L    # 430.04385
        0x40737450b0f27bb3L    # 311.2697
        0x40686483f91e646fL    # 195.14111
        0x406a4318e757928eL    # 210.09679
        0x407372089a027525L    # 311.1271
        0x406a1c8769ec2ce4L    # 208.89153
        0x4075a97ee4e26d48L    # 346.59348
        0x40740acd013a92a3L    # 320.67505
        0x40694f1bc5586445L    # 202.47214
        0x407c384cc2507208L    # 451.51874
        0x40731f2e9ccb7d41L    # 305.94888
        0x40758b90e0221427L    # 344.72287
        0x4074ca6872b020c5L    # 332.6505
        0x4070a04bdba0a527L    # 266.01852
        0x4075f722bbecaab9L    # 351.44598
        0x406abc432ca57a78L    # 213.8832
        0x407552ecfe9b7bf2L    # 341.18286
    .end array-data

    :array_2
    .array-data 8
        -0x3fc052277c45cbbcL    # -31.679085
        -0x3fc405b738e6d15bL    # -27.977673
        -0x3fb32fdcdf698783L    # -57.626072
        -0x3fa85cd5cfaacd9fL    # -94.54945
        -0x3fa11c2a9930be0eL    # -123.5599
        -0x3f9d519fe86833c6L    # -149.44923
        -0x3fc30350e3476295L    # -28.987047
        -0x3fc1706c97d8cf3aL    # -30.560843
        -0x3fc0bc97fa5d28d0L    # -31.263306
        -0x3fb24d7be121ee67L    # -59.394657
        -0x3fb3dccaff6d3309L    # -56.275055
        -0x3faff1dc1e7967cbL    # -64.22094
        -0x3fa86dc6d1e108c4L    # -94.28474
        -0x3fa9d2cbd1244a62L    # -88.70631
        -0x3fa841ddc1e7967dL    # -94.97084
        -0x3fa212a10e022142L    # -119.70892
        -0x3fa1d7e2046c764bL    # -120.62683
        -0x3fa28c2949a56580L    # -117.80998
        -0x3f9dbfbda5119ce0L    # -146.0081
        -0x3f9cdecce1c58256L    # -153.03749
    .end array-data

    :array_3
    .array-data 4
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0x78
        0x86
        0x6e
        0xbf
        0x7f
        0x86
        0x6e
        0x6f
        0x6d
        0x6e
        0x4f
        0x73
        0x6a
        0x7a
    .end array-data

    :array_4
    .array-data 8
        0x402c362bae03b3eaL    # 14.105802
        0x403097ba450acc0cL    # 16.592686
        0x40429514c22ee419L    # 37.164696
        0x4033150d0678c005L    # 19.08223
        0x4041ab23033a4724L    # 35.337006
        0x404013bfc6540cc8L    # 32.15429
        0x402efc0d90e23af3L    # 15.492291
        0x4039239a5a89b952L    # 25.139074
        0x40323ff705857affL    # 18.249863
        0x403f5ae5ffa3b9aeL    # 31.355072
        0x4037c69707182236L    # 23.775742
        0x403461c842fa5094L    # 20.381962
        0x4040c416f0068db9L    # 33.53195
        0x4035d0f7b9e060feL    # 21.81628
        0x40339e40420f6f09L    # 19.618168
        0x40305d4c22ee4192L    # 16.364443
        0x4035fc8a9bcfd4bfL    # 21.98649
        0x402fd03dbc23315dL    # 15.906721
        0x40404eff7dfa00e2L    # 32.617172
        0x402f30a6b93ccd10L    # 15.595022
    .end array-data

    :array_5
    .array-data 8
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
    .end array-data

    :array_6
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_7
    .array-data 8
        0x40a4119bc01a36e3L    # 2568.8042
        0x4093471b3d07c84bL    # 1233.7766
        0x40a897307c84b5ddL    # 3147.5947
        0x4096f08346dc5d64L    # 1468.1282
        0x40a1c684c2f837b5L    # 2275.2593
        0x40a3501ce075f6fdL    # 2472.0564
        0x409efaa809d49518L    # 1982.6641
        0x40a74ee0c49ba5e3L    # 2983.439
        0x40a317fdd97f62b7L    # 2443.9958
        0x40a4b19559b3d07dL    # 2648.7917
        0x40a411ed5cfaacdaL    # 2568.9636
        0x4091b101205bc01aL    # 1132.2511
        0x40a2df463f141206L    # 2415.6372
        0x40915633b645a1cbL    # 1109.5505
        0x40a8e407ae147ae1L    # 3186.015
        0x40a013463f141206L    # 2057.6372
        0x40a3d4205bc01a37L    # 2538.0632
        0x40a5cbc779a6b50bL    # 2789.8896
        0x409988ea161e4f76L    # 1634.2286
        0x409d8eafb7e90ff9L    # 1891.6716
    .end array-data

    :array_8
    .array-data 8
        0x406dcf7af640639dL    # 238.48376
        0x407194cccccccccdL    # 281.3
        0x4067c88461f9f01cL    # 190.26616
        0x407b0c59b3d07c85L    # 432.7719
        0x406a6a28f5c28f5cL    # 211.3175
        0x40703d26809d4952L    # 259.8219
        0x40759421426fe719L    # 345.25812
        0x4072607b9e060fe4L    # 294.03018
        0x40763ff0d844d014L    # 355.9963
        0x406bac869835158cL    # 221.39143
        0x406e2e98dcdb37caL    # 241.45616
        0x406caa9f16b11c6dL    # 229.33192
        0x4074c19096bb98c8L    # 332.0978
        0x407c66d681ecd4aaL    # 454.42737
        0x407684807dd44135L    # 360.28137
        0x407577ec02f2f987L    # 343.49512
        0x406ae2a1b5c7cd8aL    # 215.08224
        0x406c5421ea359360L    # 226.62914
        0x40735a5fa43fe5c9L    # 309.64835
        0x407386ca8198f1d4L    # 312.42444
    .end array-data

    :array_9
    .array-data 8
        -0x3fc3ff7c243dcceaL    # -28.002012
        -0x3fbf682f9ca5bd94L    # -33.186047
        -0x3fb041f8a0902de0L    # -63.4846
        -0x3fa8d5e15ca6ca04L    # -92.65812
        -0x3fa1af460aa64c30L    # -121.26135
        -0x3f9db338ef34d6a1L    # -146.3993
        -0x3fc64c78854cdb7bL    # -25.701286
        -0x3fc12c0c8472c0e8L    # -30.827934
        -0x3fbfe297635e742aL    # -32.229755
        -0x3fb1c750b0f27bb3L    # -60.44285
        -0x3fb2a3a41e57d9dcL    # -58.721554
        -0x3fb3676b00ffda40L    # -57.192047
        -0x3fa8fe04c0592104L    # -92.03096
        -0x3faa0c7fa1a0cf18L    # -87.80471
        -0x3fa901e939eadd59L    # -91.97014
        -0x3fa1a3dc486ad2ddL    # -121.43968
        -0x3fa289e4f765fd8bL    # -117.8454
        -0x3fa2e4bb6ed67770L    # -116.42606
        -0x3f9db86fbd273d5cL    # -146.23636
        -0x3f9d48ea9e6eeb70L    # -149.72136
    .end array-data

    :array_a
    .array-data 4
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xc3
        0x63
        0x6f
        0xb1
        0x8e
        0xb6
        0xa4
        0x9f
        0xb7
        0x8c
        0xb7
        0x66
        0x7a
        0x5a
    .end array-data

    :array_b
    .array-data 8
        -0x3fc0fe38da3c2118L    # -31.006945
        0x4042af310129cbabL    # 37.368683
        0x40327a047d3d4281L    # 18.476631
        0x40422fc7de5082cfL    # 36.373287
        0x402e846e08f21709L    # 15.258652
        0x4040f6bcbe61cfffL    # 33.927635
        0x403ab1c432ca57a8L    # 26.6944
        0x4039425ffa3b9ae1L    # 25.259277
        0x4033b44e3ffef391L    # 19.704319
        0x4037ecffb8b26395L    # 23.925777
        0x4037bef2f9873ffbL    # 23.745895
        0x4040bbf601797cc4L    # 33.468445
        0x404287e23f24d8fdL    # 37.061592
        0x40348934bd76ee74L    # 20.535961
        0x403ef4d61b2a27f2L    # 30.956392
        0x403c117d7c2ca149L    # 28.068321
        0x403ea6d5e071c53fL    # 30.651701
        0x403a3e873bc903eaL    # 26.244251
        0x4030694b380cb6c8L    # 16.411304
        0x40381f2ef0ae5365L    # 24.12181
    .end array-data

    :array_c
    .array-data 8
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
    .end array-data

    :array_d
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_e
    .array-data 8
        0x40993d80346dc5d6L    # 1615.3752
        0x409a4e2d288ce704L    # 1683.5441
        0x40a270b2b020c49cL    # 2360.349
        0x40a02d0ff9724745L    # 2070.5312
        0x40a90483fe5c91d1L    # 3202.2578
        0x4094fd887fcb923aL    # 1343.3833
        0x40a3ac379a6b50b1L    # 2518.1086
        0x409db0cd1b71758eL    # 1900.2003
        0x40a5ef8d1b71758eL    # 2807.7756
        0x409af0f79a6b50b1L    # 1724.2418
        0x4099ec46a7ef9db2L    # 1659.069
        0x40915d25c91d14e4L    # 1111.2869
        0x4092b544ea4a8c15L    # 1197.3173
        0x40a978e305532618L    # 3260.4434
        0x40a8a6dbda5119ceL    # 3155.4294
        0x40a030a28240b780L    # 2072.3174
        0x4095f65182a9930cL    # 1405.5796
        0x4091c247e28240b8L    # 1136.5702
        0x4090d4d72474538fL    # 1077.2101
        0x40912ed3f7ced917L    # 1099.707
    .end array-data

    :array_f
    .array-data 8
        0x406a7b4aa10e0221L    # 211.85286
        0x4067136c3760bf5dL    # 184.60696
        0x40735d1fbe76c8b4L    # 309.82025
        0x40726e5d82fd75e2L    # 294.89783
        0x406b98e425aee632L    # 220.77785
        0x4072e6bda5119ce0L    # 302.4213
        0x4071a3a1426fe719L    # 282.22687
        0x40730156c0d6f545L    # 304.08368
        0x40726426809d4952L    # 294.2594
        0x406d577d566cf41fL    # 234.73405
        0x40766c8902de00d2L    # 358.78345
        0x4075d25b81301648L    # 349.14734
        0x406639d4024b33dbL    # 177.80713
        0x40616c5fd8adab9fL    # 139.3867
        0x407b0d641b328b6eL    # 432.83694
        0x407301ae147ae148L    # 304.105
        0x406cc96777079e5aL    # 230.29388
        0x4071fb9cc100e6b0L    # 287.72577
        0x4067331dbca9691aL    # 185.59738
        0x40743ce1b089a027L    # 323.8051
    .end array-data

    :array_10
    .array-data 8
        -0x3fc16f784662bae0L    # -30.564571
        -0x3fc5cdf41aef6f8fL    # -26.195494
        -0x3fb060afdda8bd23L    # -63.244633
        -0x3fa8645bc01a36e3L    # -94.4319
        -0x3fa2939db22d0e56L    # -117.6935
        -0x3f9dbcc947064ecfL    # -146.10043
        -0x3fc6f1081c2e33f0L    # -25.05847
        -0x3fc15f9ae0c17657L    # -30.626543
        -0x3fbec469d7342edcL    # -34.46552
        -0x3fb082398201cd60L    # -62.98262
        -0x3fb061329c347e8dL    # -63.240643
        -0x3fb2068ac5c13fd1L    # -59.94889
        -0x3fa967525460aa65L    # -90.3856
        -0x3fa95fac710cb296L    # -90.5051
        -0x3fa9d0604189374cL    # -88.744125
        -0x3fa3388d002e2329L    # -115.116394
        -0x3fa2afb341e14be0L    # -117.254684
        -0x3fa12fe0221426feL    # -123.251945
        -0x3f9cb860aa64c2f8L    # -154.2382
        -0x3f9d464a8c154c98L    # -149.8034
    .end array-data

    :array_11
    .array-data 4
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xa1
        0xb6
        0x5f
        0xc1
        0xa8
        0x4f
        0x81
        0x5f
        0xca
        0x83
        0x66
        0xba
        0x67
        0x71
    .end array-data

    :array_12
    .array-data 8
        0x4029e1abb01c92deL    # 12.940763
        0x403f4a5edd052935L    # 31.29051
        0x404201fd60e94ee4L    # 36.015545
        0x403388461f9f01b8L    # 19.53232
        0x404106b1704ff434L    # 34.05229
        0x403d901fd9ba1b19L    # 29.562986
        0x402934d594f26aecL    # 12.603192
        0x4041ec1743e963dcL    # 35.84446
        0x403c215f02c4d65eL    # 28.130356
        0x403b2947e06961c3L    # 27.161253
        0x4031aca6fc58ab93L    # 17.674423
        0x402eccb7f5a5332bL    # 15.399841
        0x402a9cdea033e78eL    # 13.306386
        0x40394d9c8c9320daL    # 25.30317
        0x4037723704790b85L    # 23.446152
        0x4041149cdc443915L    # 34.161037
        0x402b1b3d6c721922L    # 13.553203
        0x403b7871c53f39d2L    # 27.470486
        0x4029264f11b60ae9L    # 12.574822
        0x402e6ce789e774efL    # 15.212704
    .end array-data

    :array_13
    .array-data 8
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
    .end array-data

    :array_14
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_15
    .array-data 8
        0x40a33ac95e9e1b09L    # 2461.3933
        0x4093ff516872b021L    # 1279.8295
        0x40a59f4ccccccccdL    # 2767.65
        0x40a617bc01a36e2fL    # 2827.8672
        0x40a2c2029c779a6bL    # 2401.0051
        0x4095486c083126e9L    # 1362.1055
        0x4090be798c7e2824L    # 1071.6187
        0x4092fea9fbe76c8bL    # 1215.666
        0x40959436c8b43958L    # 1381.0535
        0x409c9faa9930be0eL    # 1831.9166
        0x409ed6c84b5dcc64L    # 1973.6956
        0x40a2265182a9930cL    # 2323.1592
        0x40a225fbc01a36e3L    # 2322.9917
        0x40a961889a027525L    # 3248.7668
        0x4092740c154c985fL    # 1181.0118
        0x409a11b0be0ded29L    # 1668.4226
        0x4095c00538ef34d7L    # 1392.0051
        0x40a5f33a858793deL    # 2809.6143
        0x40a5778ff9724745L    # 2747.7812
        0x409f5f172474538fL    # 2007.7726
    .end array-data

    :array_16
    .array-data 8
        0x4075ca3afb7e9100L    # 348.6394
        0x40746440639d5e4aL    # 326.26572
        0x406ae3f32378ab0dL    # 215.12343
        0x40787e32df505d10L    # 391.88742
        0x4075313e0370cdc8L    # 339.07764
        0x406feb41dd1a21eaL    # 255.35179
        0x4070f8335d249e45L    # 271.51254
        0x4073d9031ceaf252L    # 317.56326
        0x40699558b827fa1aL    # 204.66708
        0x4072488644523f68L    # 292.53278
        0x40714a26bf8769ecL    # 276.63446
        0x406f220c5eb313beL    # 249.06401
        0x406fcff41f212d77L    # 254.49855
        0x406d5f639d5e4a38L    # 234.98091
        0x4074115532617c1cL    # 321.0833
        0x4067df18a86d71f3L    # 190.97176
        0x40766fd0bb6ed677L    # 358.98846
        0x40752414c447c30dL    # 338.25507
        0x406b2dcca2db61bbL    # 217.43123
        0x4075d2667b5f1befL    # 349.15002
    .end array-data

    :array_17
    .array-data 8
        -0x3fc20294467381d8L    # -29.989925
        -0x3fc11d6da0168b5dL    # -30.885046
        -0x3faff79945b6c376L    # -64.13127
        -0x3fa903ff583a53b9L    # -91.93754
        -0x3fa11874538ef34dL    # -123.6179
        -0x3f9cd6f4f0d844d0L    # -153.2826
        -0x3fc3302f2f987400L    # -28.81178
        -0x3fc50211233df2aaL    # -26.991926
        -0x3fc0e966e008e9b4L    # -31.088274
        -0x3fafe9129888f862L    # -64.35824
        -0x3fb0dc52bd3c3611L    # -62.278725
        -0x3fb3613083558a76L    # -57.240707
        -0x3faa14d6a161e4f7L    # -87.6744
        -0x3fa8d7a5657fb69aL    # -92.63053
        -0x3fa9b2bf1e8e6080L    # -89.207085
        -0x3fa3348a1dfb938aL    # -115.17907
        -0x3fa10494ff0025c0L    # -123.928406
        -0x3fa1171a21ea3593L    # -123.63903
        -0x3f9cb9549f94855eL    # -154.20842
        -0x3f9d1b8216c61523L    # -151.14037
    .end array-data

    :array_18
    .array-data 4
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xba
        0xa4
        0xa6
        0xbc
        0xa3
        0xb0
        0x54
        0x97
        0xaf
        0x69
        0x70
        0x81
        0xca
        0x5a
    .end array-data

    :array_19
    .array-data 8
        0x4043774ddf86e3b4L    # 38.932064
        0x402cc8110a137f39L    # 14.390755
        0x403c5ea65cf67b1cL    # 28.369726
        0x40321ee59af9ebeaL    # 18.120691
        0x4038a1fc8f32378bL    # 24.63276
        0x40325274080f98faL    # 18.322083
        0x4037f80f88333fc8L    # 23.968987
        0x40396f2745bf26f2L    # 25.434193
        0x4040a3e3c105186eL    # 33.280388
        0x4031c32c40d0aaa8L    # 17.762394
        0x4036e6e58a32f449L    # 22.90194
        0x4031c60e6299524cL    # 17.773657
        0x40417b7af640639dL    # 34.96469
        0x4043f8b26394faceL    # 39.942944
        0x4042c7d1782d3847L    # 37.56108
        0x403579f7c6759ab7L    # 21.476437
        0x403024d25edd0529L    # 16.143835
        0x40425e1e81cb46bbL    # 36.735306
        0x403aa30e3cd9a522L    # 26.636936
        0x40414ee147ae147bL    # 34.61625
    .end array-data

    :array_1a
    .array-data 8
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
    .end array-data

    :array_1b
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1c
    .array-data 8
        0x409aad496bb98c7eL    # 1707.3217
        0x40a3bef381d7dbf5L    # 2527.4756
        0x409d95c20c49ba5eL    # 1893.4395
        0x40a0e15b7e90ff97L    # 2160.6787
        0x40a276b765fd8adbL    # 2363.3582
        0x40a61d5525460aa6L    # 2830.6663
        0x40916611eb851eb8L    # 1113.5175
        0x40a65b46c226809dL    # 2861.6382
        0x409acae1e4f765feL    # 1714.7206
        0x409cf669930be0dfL    # 1853.6031
        0x4096df13c3611340L    # 1463.7693
        0x40991d25fd8adabaL    # 1607.2871
        0x4099e6ae48e8a71eL    # 1657.6702
        0x4094db997f62b6aeL    # 1334.8999
        0x409f95c96bb98c7eL    # 2021.4467
        0x40a011e5460aa64cL    # 2056.9478
        0x40a23dac083126e9L    # 2334.836
        0x4092b78a57a786c2L    # 1197.8851
        0x40a2a99141205bc0L    # 2388.7837
        0x4094b798fc504817L    # 1325.8994
    .end array-data

    :array_1d
    .array-data 8
        0x407334b37c99ae92L    # 307.29382
        0x4074714d4024b33eL    # 327.08136
        0x4066e595421c0443L    # 183.17447
        0x407a550f27bb2fecL    # 421.3162
        0x40766a48fd9fd36fL    # 358.64282
        0x406f8e6594af4f0eL    # 252.4499
        0x407576c710cb295fL    # 343.4236
        0x406f2499c38b04abL    # 249.14377
        0x406b18c8605681edL    # 216.77446
        0x406f113d46b26bf8L    # 248.53873
        0x407095663c74fb55L    # 265.33746
        0x4071c979a6b50b0fL    # 284.5922
        0x406c249595feda66L    # 225.14326
        0x407c5e9dfb9389b5L    # 453.91357
        0x407231685db76b3cL    # 291.08798
        0x406e0056d5cfaaceL    # 240.0106
        0x4066eb1a60d4562eL    # 183.34697
        0x4072e2185f06f694L    # 302.13095
        0x4070c156238da3c2L    # 268.08353
        0x4070513f141205bcL    # 261.0779
    .end array-data

    :array_1e
    .array-data 8
        -0x3fbf270c88a47ed0L    # -33.69493
        -0x3fc1e2d43d03968dL    # -30.113949
        -0x3fb08f22424a276bL    # -62.881767
        -0x3fa95faf8df7a4e8L    # -90.50491
        -0x3fa0c3e2d6238da4L    # -124.93928
        -0x3f9dc021426fe719L    # -145.99594
        -0x3fc1ee6fc58ab92cL    # -30.068607
        -0x3fc449adb8348f54L    # -27.712193
        -0x3fc620029f16b11cL    # -25.87496
        -0x3fb26c4e3ffef391L    # -59.153862
        -0x3fb1b34395810625L    # -60.5995
        -0x3fafe90b8cfbfc65L    # -64.35867
        -0x3fa94b97a24894c4L    # -90.81887
        -0x3fa9c972ef0ae536L    # -88.85236
        -0x3fa93873abc94706L    # -91.11794
        -0x3fa2b9f99c38b04bL    # -117.09414
        -0x3fa241abc947064fL    # -118.97389
        -0x3fa0eeacc0bdcad1L    # -124.270706
        -0x3f9cbcfc504816f0L    # -154.0942
        -0x3f9d40e87d2c7b89L    # -149.97162
    .end array-data

    :array_1f
    .array-data 4
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0x9b
        0xaa
        0x54
        0x7d
        0xa1
        0xc7
        0xc7
        0xad
        0x87
        0x68
        0xab
        0x79
        0x53
        0xc4
    .end array-data

    :array_20
    .array-data 8
        0x4038770e7ff583a5L    # 24.465065
        0x403f1a83c297bfa5L    # 31.103573
        0x4043995c42203600L    # 39.198128
        0x402fae7903211cb0L    # 15.840767
        0x403214471b478423L    # 18.07921
        0x4030e41d9f4d37c1L    # 16.891077
        0x4042b61ede1198afL    # 37.422817
        0x4033e6337a80cf9eL    # 19.899223
        0x4038c917f84449dcL    # 24.785522
        0x40344596c82e019bL    # 20.271832
        0x402964ee392e1ef7L    # 12.69713
        0x4041ecba40d90e24L    # 35.849434
        0x40374707bfe7e1fcL    # 23.277462
        0x403c12c13b9f127fL    # 28.073261
        0x4042a8109d0635a4L    # 37.313007
        0x402b49d9f4d37c13L    # 13.644241
        0x4042666202539757L    # 36.799866
        0x403cd502ff8ec0f9L    # 28.832077
        0x40419d6d43d03969L    # 35.229897
        0x4030dfb480a5accdL    # 16.873848
    .end array-data

    :array_21
    .array-data 8
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
    .end array-data

    :array_22
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_23
    .array-data 8
        0x40a2c00c7e28240bL    # 2400.0244
        0x409bcf18793dd97fL    # 1779.7739
        0x40a2c6b6e2eb1c43L    # 2403.3572
        0x409f5bf5a858793eL    # 2006.9899
        0x40a6a6b923a29c78L    # 2899.3616
        0x409be7b2474538efL    # 1785.9241
        0x40a1af674538ef35L    # 2263.7017
        0x40a593ac083126e9L    # 2761.836
        0x409663e3a29c779aL    # 1432.9723
        0x40986d4fdf3b645aL    # 1563.328
        0x40a3697edfa43fe6L    # 2484.7478
        0x40a2679b22d0e560L    # 2355.803
        0x40a2bdaaa64c2f83L    # 2398.8333
        0x40a066d4a2339c0fL    # 2099.4153
        0x409e88bf97247454L    # 1954.1871
        0x40a6ec96bb98c7e3L    # 2934.2944
        0x40a1773fbe76c8b4L    # 2235.6245
        0x40a2de437b4a233aL    # 2415.1318
        0x4094c722339c0ebfL    # 1329.7834
        0x40a27ded916872b0L    # 2366.964
        0x40950c5cc63f1412L    # 1347.0906
    .end array-data

    :array_24
    .array-data 8
        0x40715670e2c12ad8L    # 277.40256
        0x406d9b28b6d86ec1L    # 236.84872
        0x406a2635fc3b4f61L    # 209.19409
        0x4076853b83cf2cf9L    # 360.32703
        0x407972fd60e94ee4L    # 407.18686
        0x40680e3d5bab2181L    # 192.44499
        0x40740594467381d8L    # 320.3487
        0x407142bcd35a8588L    # 276.1711
        0x40740086594af4f1L    # 320.0328
        0x4075e8b702602c91L    # 350.54468
        0x406fad35158b8280L    # 253.41273
        0x406b37fb69984a0eL    # 217.74944
        0x40691036b8f9b131L    # 200.50668
        0x407c7de59f2ba9d2L    # 455.86856
        0x4075b8afb7e90ff9L    # 347.5429
        0x406c4acd9e83e426L    # 226.3376
        0x4073cf4e3bcd35a8L    # 316.9566
        0x406c1a995aaf78ffL    # 224.83122
        0x40752d6b1c432ca5L    # 338.83865
        0x40737ffc3b4f6167L    # 311.99908
        0x40763f7b00bcbe62L    # 355.96753
    .end array-data

    :array_25
    .array-data 8
        -0x3fbfef25c3dee782L    # -32.13166
        -0x3fc5aaff7dfa00e2L    # -26.332039
        -0x3fc25db5fa22706dL    # -29.633942
        -0x3fafc366f9335d25L    # -64.94684
        -0x3faa3fdb22d0e560L    # -87.00225
        -0x3fa270f156191149L    # -118.23527
        -0x3f9d9afd9fd36f7eL    # -147.15654
        -0x3fc44d76bc1effa0L    # -27.697407
        -0x3fc5d5945b6c3761L    # -26.165705
        -0x3fc23a1e3eaf6838L    # -29.772976
        -0x3fb3ec5e80bed741L    # -56.153366
        -0x3fb318b04ab606b8L    # -57.80712
        -0x3fb36a0841ede11aL    # -57.171623
        -0x3faaa2d441355476L    # -85.455795
        -0x3faa69b645a1cac1L    # -86.34825
        -0x3faa68c3760bf5d8L    # -86.36307
        -0x3fa128e4e26d4802L    # -123.36103
        -0x3fa1ddbb83cf2cf9L    # -120.53543
        -0x3fa2a7187e7c06e2L    # -117.38913
        -0x3f9d50f5989df117L    # -149.47002
        -0x3f9d275810624dd3L    # -150.7705
    .end array-data

    :array_26
    .array-data 4
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0x5f
        0x6b
        0x9c
        0xc9
        0x63
        0x6e
        0x50
        0x6c
        0x9b
        0x4c
        0xb0
        0x8e
        0x84
        0x6e
    .end array-data

    :array_27
    .array-data 8
        0x0
        0x403a223b46fdeb53L    # 26.133717
        0x403c6fa53b8e4b88L    # 28.436115
        0x40347e543f1c7582L    # 20.493473
        0x4035ad43393ab431L    # 21.676807
        0x4039949e8815e397L    # 25.580544
        0x40398fd3c3611340L    # 25.561825
        0x4041ada9435ac8a3L    # 35.356728
        0x402eb533b1077469L    # 15.35391
        0x403ef8257c914b16L    # 30.969322
        0x4039fb98a65492ffL    # 25.982798
        0x4037940c4156e265L    # 23.578312
        0x4035022b5a20ddc6L    # 21.008474
        0x4035403eb7cbb3c8L    # 21.250957
        0x4029d51a21ea3593L    # 12.916215
        0x40300e84be40420fL    # 16.056713
        0x40375c6fbd273d5cL    # 23.36108
        0x40409acec41dd1a2L    # 33.209435
        0x4032e21f4b1ee243L    # 18.88329
        0x403c9056605ee569L    # 28.563818
        0x4037a4b242070b8dL    # 23.643345
    .end array-data

    :array_28
    .array-data 8
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
    .end array-data

    :array_29
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_2a
    .array-data 8
        0x40a2c00c7e28240bL    # 2400.0244
        0x40a5682d916872b0L    # 2740.089
        0x409e170b780346dcL    # 1925.7612
        0x40a2b3b47ae147aeL    # 2393.8525
        0x40a6b2b74bc6a7f0L    # 2905.358
        0x40a78981e4f765feL    # 3012.7537
        0x40a6709cfaacd9e8L    # 2872.3066
        0x409e0ec395810625L    # 1923.691
        0x40a267d0be0ded29L    # 2355.9077
        0x40a060a8c154c986L    # 2096.3296
        0x409674d758e21965L    # 1437.2103
        0x40a793961e4f7660L    # 3017.7932
        0x40a6cd44189374bcL    # 2918.633
        0x40a63d7fbe76c8b4L    # 2846.7495
        0x4094061460aa64c3L    # 1281.5199
        0x409d04a353f7ced9L    # 1857.1595
        0x40a18a0c7e28240bL    # 2245.0244
        0x40936a1495182a99L    # 1242.5201
        0x409f584c985f06f7L    # 2006.0748
        0x409b583ac710cb29L    # 1750.0574
        0x40a256b9db22d0e5L    # 2347.363
    .end array-data

    :array_2b
    .array-data 8
        0x40715670e2c12ad8L    # 277.40256
        0x407407be22e5de16L    # 320.48392
        0x4074a7ed3d859c8dL    # 330.49542
        0x4069358ef34d6a16L    # 201.6737
        0x407ac8ec226809d5L    # 428.55765
        0x40744ffc3b4f6167L    # 324.99908
        0x4067a8ef88b97785L    # 189.27924
        0x4074bc088509bf9cL    # 331.75208
        0x4067e661a60d4563L    # 191.19942
        0x4074db25c3dee782L    # 333.69672
        0x4075b230dd82fd76L    # 347.13693
        0x4069e5bb98c7e282L    # 207.17915
        0x406bbf7e28240b78L    # 221.98415
        0x4076c54a03c4b09fL    # 364.33057
        0x406d9e1c8216c615L    # 236.94098
        0x40643f41c8216c61L    # 161.97678
        0x406e257bdcf0307fL    # 241.17137
        0x407468bc6a7ef9dbL    # 326.546
        0x40750ddbdf8f4730L    # 336.86618
        0x4073e9fb7e90ff97L    # 318.6239
        0x4068b858b827fa1aL    # 197.76083
    .end array-data

    :array_2c
    .array-data 8
        -0x3fbfef25c3dee782L    # -32.13166
        -0x3fc127f91e646f15L    # -30.843855
        -0x3fbf35af9ebe9c88L    # -33.580578
        -0x3fb000e3de6149c7L    # -63.993046
        -0x3fa971c45cbbc2b9L    # -90.22239
        -0x3fa25a0e7ff583a5L    # -118.592865
        -0x3f9d5da9a8049668L    # -149.07304
        -0x3fc6594046412cf1L    # -25.651363
        -0x3fc37538bcdfefbfL    # -28.542103
        -0x3fc341d798d8a97aL    # -28.742804
        -0x3fb2d557bc7f77afL    # -58.33326
        -0x3fb1686833c6002aL    # -61.18432
        -0x3fb3693e2d6238daL    # -57.17779
        -0x3fa86a22e5de15caL    # -94.34162
        -0x3fa9f2649906cca3L    # -88.21261
        -0x3faaa33a14cec41eL    # -85.44958
        -0x3fa1314af4f0d845L    # -123.2298
        -0x3fa19be47991bc56L    # -121.56418
        -0x3fa31567620ee8d1L    # -115.665565
        -0x3f9d3e7967caea74L    # -150.04768
        -0x3f9dafd1b71758e2L    # -146.50565
    .end array-data

    :array_2d
    .array-data 4
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0x60
        0x7d
        0xc6
        0x51
        0x50
        0x58
        0x96
        0x53
        0xb2
        0x80
        0x79
        0x9b
        0xbc
        0x6f
    .end array-data

    :array_2e
    .array-data 8
        0x0
        0x40385ca9691a75cdL    # 24.36196
        0x404093041cc532a5L    # 33.148563
        0x4037818c3b0c4589L    # 23.506046
        0x402c63d7f51efb6eL    # 14.195007
        0x403d6b588e368f08L    # 29.41932
        0x4040350a02b84125L    # 32.414368
        0x4029e083558a7610L    # 12.938502
        0x404269290257c915L    # 36.821564
        0x4037bd4163779e9dL    # 23.739279
        0x40418797785729b3L    # 35.05931
        0x402b6a47cb70ac3bL    # 13.707579
        0x4038ea773e24febdL    # 24.915882
        0x403172367e414e7fL    # 17.446144
        0x4038dae685db76b4L    # 24.85508
        0x402d9728c79f6662L    # 14.795233
        0x40434a889c1b5419L    # 38.582294
        0x40435c45fe111277L    # 38.720886
        0x402f5d08d4bad7d8L    # 15.681708
        0x403956b93ccd0fe9L    # 25.338764
        0x403af565c2d27807L    # 26.958584
    .end array-data

    :array_2f
    .array-data 8
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
        0x403c000000000000L    # 28.0
    .end array-data

    :array_30
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private drawGooedyEffect(Landroid/graphics/Canvas;Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;)V
    .locals 7

    const/high16 v4, 0x40000000    # 2.0f

    iget-boolean v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->isClearView:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070887

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLogoView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result v1

    mul-float/2addr v0, v1

    div-float v3, v0, v4

    :goto_0
    invoke-virtual {p2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->getPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v4

    iget-object v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLogoView:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    iget-object v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLogoView:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v4

    add-float/2addr v2, v4

    invoke-virtual {p2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->getCenterX()F

    move-result v4

    invoke-virtual {p2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->getCenterY()F

    move-result v5

    invoke-virtual {p2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->getRadius()F

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/utils/GooeyEffector;->createGooeyConnection(Landroid/graphics/Path;FFFFFF)V

    invoke-virtual {p2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->getPath()Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07087c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLogoView:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getScaleY()F

    move-result v1

    mul-float/2addr v0, v1

    div-float v3, v0, v4

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSmallBalls:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mGooeyPath:Landroid/graphics/Path;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->setBackgroundColor(I)V

    return-void
.end method


# virtual methods
.method public handleMessage(Z)V
    .locals 12

    const/4 v8, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    new-instance v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070888

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v10, 0x3fd3333340000000L    # 0.30000001192092896

    cmpg-double v6, v6, v10

    if-gtz v6, :cond_1

    move v6, v8

    :goto_0
    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;-><init>(Landroid/content/Context;FFFIZZ)V

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSmallBalls:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->startBixbySaying()V

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mParticleTickHandler:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView$WeakRefHandler;

    if-eqz p1, :cond_0

    const/4 v8, 0x2

    :cond_0
    iget v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mParticlePerSec:F

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float v2, v3, v2

    float-to-long v2, v2

    invoke-virtual {v1, v8, v2, v3}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView$WeakRefHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_1
    move v6, v5

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSmallBalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSmallBalls:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->isMetaball()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->drawGooedyEffect(Landroid/graphics/Canvas;Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSmallBalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v3, v4, -0x1

    :goto_1
    if-ltz v3, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSmallBalls:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->isAlived()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSmallBalls:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->invalidate()V

    :cond_4
    return-void
.end method

.method public setClearViewMode()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->isClearView:Z

    return-void
.end method

.method public setLogoView(Landroid/widget/FrameLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLogoView:Landroid/widget/FrameLayout;

    return-void
.end method

.method public startBixbySpeaking(Z)V
    .locals 12

    const/4 v8, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mGooeyPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    new-instance v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070888

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v6

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v6

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    cmpg-double v6, v6, v10

    if-gtz v6, :cond_1

    move v6, v8

    :goto_0
    move v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;-><init>(Landroid/content/Context;FFFIZZ)V

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSmallBalls:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->startBixbySaying()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->invalidate()V

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mParticleTickHandler:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView$WeakRefHandler;

    if-eqz p1, :cond_0

    const/4 v8, 0x2

    :cond_0
    iget v2, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mParticlePerSec:F

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float v2, v3, v2

    float-to-long v2, v2

    invoke-virtual {v1, v8, v2, v3}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView$WeakRefHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_1
    move v6, v5

    goto :goto_0
.end method

.method public startCompleteMotion(Z)V
    .locals 20

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/WindowManager;

    new-instance v11, Landroid/util/DisplayMetrics;

    invoke-direct {v11}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v14}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v10, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v10

    const/high16 v4, 0x44870000    # 1080.0f

    div-float v12, v3, v4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->VELOCITY_COMPLETE_BASIC:F

    mul-float v13, v3, v12

    const/4 v9, 0x0

    :goto_0
    const/16 v3, 0xf

    if-ge v9, v3, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mDirectionCnt:I

    const/4 v4, 0x7

    if-le v3, v4, :cond_0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mDirectionCnt:I

    :cond_0
    new-instance v2, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070889

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v16

    const-wide v18, 0x3fd3333340000000L    # 0.30000001192092896

    cmpg-double v7, v16, v18

    if-gtz v7, :cond_1

    const/4 v7, 0x1

    :goto_1
    move/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;-><init>(Landroid/content/Context;FFFZZ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mSmallBalls:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mDirectionCnt:I

    invoke-virtual {v2, v3, v13}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/particles/SmallBall;->startComplete(IF)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mDirectionCnt:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mDirectionCnt:I

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLogoView:Landroid/widget/FrameLayout;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mLogoView:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const v4, 0x3f733333    # 0.95f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const v4, 0x3f733333    # 0.95f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x3c

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView$1;-><init>(Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->invalidate()V

    return-void
.end method

.method public stopBixbySpeaking(Z)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView;->mParticleTickHandler:Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView$WeakRefHandler;

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/vzwbixbysetupwizard/hq/vi/logoparticle/BixbyParticleView$WeakRefHandler;->removeMessages(I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
