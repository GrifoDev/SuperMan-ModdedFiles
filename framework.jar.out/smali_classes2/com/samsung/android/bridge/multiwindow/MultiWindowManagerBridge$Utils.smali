.class public Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$Utils;
.super Ljava/lang/Object;
.source "MultiWindowManagerBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Utils"
.end annotation


# static fields
.field private static final DEBUG_DENSITY:Z

.field public static sSineOut90Interpolator:Landroid/view/animation/PathInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const v3, 0x3e2e147b    # 0.17f

    .line 354
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$Utils;->sSineOut90Interpolator:Landroid/view/animation/PathInterpolator;

    .line 352
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static densityBucketToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "densityBucket"    # I

    .prologue
    .line 421
    sparse-switch p0, :sswitch_data_0

    .line 428
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    .line 422
    :sswitch_0
    const-string/jumbo v0, "DENSITY_LOW"

    return-object v0

    .line 423
    :sswitch_1
    const-string/jumbo v0, "DENSITY_MEDIUM"

    return-object v0

    .line 424
    :sswitch_2
    const-string/jumbo v0, "DENSITY_HIGH"

    return-object v0

    .line 425
    :sswitch_3
    const-string/jumbo v0, "DENSITY_XHIGH"

    return-object v0

    .line 426
    :sswitch_4
    const-string/jumbo v0, "DENSITY_XXHIGH"

    return-object v0

    .line 427
    :sswitch_5
    const-string/jumbo v0, "DENSITY_XXXHIGH"

    return-object v0

    .line 421
    nop

    :sswitch_data_0
    .sparse-switch
        0x78 -> :sswitch_0
        0xa0 -> :sswitch_1
        0xf0 -> :sswitch_2
        0x140 -> :sswitch_3
        0x1e0 -> :sswitch_4
        0x280 -> :sswitch_5
    .end sparse-switch
.end method

.method private static getDensityBucket(I)I
    .locals 5
    .param p0, "densityDpi"    # I

    .prologue
    const/16 v4, 0x1e0

    const/16 v3, 0x140

    const/16 v2, 0xf0

    const/16 v1, 0xa0

    const/16 v0, 0x78

    .line 395
    if-gt p0, v0, :cond_0

    .line 396
    return v0

    .line 397
    :cond_0
    if-gt p0, v1, :cond_1

    .line 398
    return v1

    .line 399
    :cond_1
    if-gt p0, v2, :cond_2

    .line 400
    return v2

    .line 401
    :cond_2
    if-gt p0, v3, :cond_3

    .line 402
    return v3

    .line 403
    :cond_3
    if-gt p0, v4, :cond_4

    .line 404
    return v4

    .line 406
    :cond_4
    const/16 v0, 0x280

    return v0
.end method

.method public static getFreeformDensity(II)I
    .locals 4
    .param p0, "smallestWidth"    # I
    .param p1, "densityDpi"    # I

    .prologue
    .line 375
    const/4 v2, -0x1

    .line 376
    .local v2, "freeformDensityDpi":I
    const/16 v3, 0x258

    if-ge p0, v3, :cond_0

    .line 377
    mul-int/lit8 v3, p1, 0x4b

    div-int/lit8 v2, v3, 0x64

    .line 379
    invoke-static {p1}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$Utils;->getDensityBucket(I)I

    move-result v0

    .line 380
    .local v0, "densityBucket":I
    invoke-static {v2}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$Utils;->getDensityBucket(I)I

    move-result v1

    .line 382
    .local v1, "freeformDensityBucket":I
    if-ge v1, v0, :cond_0

    .line 383
    move v1, v0

    .line 384
    invoke-static {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge$Utils;->getMinimumDensityWithinBucket(I)I

    move-result v2

    .line 391
    .end local v0    # "densityBucket":I
    .end local v1    # "freeformDensityBucket":I
    :cond_0
    return v2
.end method

.method private static getMinimumDensityWithinBucket(I)I
    .locals 1
    .param p0, "densityBucket"    # I

    .prologue
    .line 410
    sparse-switch p0, :sswitch_data_0

    .line 416
    return p0

    .line 411
    :sswitch_0
    const/16 v0, 0x79

    return v0

    .line 412
    :sswitch_1
    const/16 v0, 0xa1

    return v0

    .line 413
    :sswitch_2
    const/16 v0, 0xf1

    return v0

    .line 414
    :sswitch_3
    const/16 v0, 0x141

    return v0

    .line 415
    :sswitch_4
    const/16 v0, 0x1e1

    return v0

    .line 410
    nop

    :sswitch_data_0
    .sparse-switch
        0xa0 -> :sswitch_0
        0xf0 -> :sswitch_1
        0x140 -> :sswitch_2
        0x1e0 -> :sswitch_3
        0x280 -> :sswitch_4
    .end sparse-switch
.end method

.method public static isFreeformMaximizing(II)Z
    .locals 3
    .param p0, "fromStackId"    # I
    .param p1, "toStackId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 357
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v2, :cond_3

    .line 358
    const/4 v2, 0x2

    if-ne p0, v2, :cond_2

    .line 359
    if-eq p1, v0, :cond_0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 358
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 359
    goto :goto_0

    :cond_2
    move v0, v1

    .line 358
    goto :goto_0

    .line 361
    :cond_3
    return v1
.end method

.method public static isMovingToFreeform(II)Z
    .locals 3
    .param p0, "fromStackId"    # I
    .param p1, "toStackId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 366
    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SAMSUNG_MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v2, :cond_3

    .line 367
    if-eq p0, v0, :cond_0

    const/4 v2, 0x3

    if-ne p0, v2, :cond_1

    .line 368
    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    :goto_0
    move v1, v0

    .line 367
    :cond_1
    return v1

    :cond_2
    move v0, v1

    .line 368
    goto :goto_0

    .line 370
    :cond_3
    return v1
.end method
