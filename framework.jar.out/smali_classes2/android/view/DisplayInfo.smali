.class public final Landroid/view/DisplayInfo;
.super Ljava/lang/Object;
.source "DisplayInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/DisplayInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/DisplayInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public address:Ljava/lang/String;

.field public appHeight:I

.field public appVsyncOffsetNanos:J

.field public appWidth:I

.field public colorMode:I

.field public defaultModeId:I

.field public flags:I

.field public hdrCapabilities:Landroid/view/Display$HdrCapabilities;

.field public largestNominalAppHeight:I

.field public largestNominalAppWidth:I

.field public layerStack:I

.field public logicalDensityDpi:I

.field public logicalHeight:I

.field public logicalWidth:I

.field public modeId:I

.field public name:Ljava/lang/String;

.field public overscanBottom:I

.field public overscanLeft:I

.field public overscanRight:I

.field public overscanTop:I

.field public ownerPackageName:Ljava/lang/String;

.field public ownerUid:I

.field public physicalXDpi:F

.field public physicalYDpi:F

.field public presentationDeadlineNanos:J

.field public removeMode:I

.field public rotation:I

.field public smallestNominalAppHeight:I

.field public smallestNominalAppWidth:I

.field public state:I

.field public supportedColorModes:[I

.field public supportedModes:[Landroid/view/Display$Mode;

.field public type:I

.field public uniqueId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/DisplayInfo$1;

    invoke-direct {v0}, Landroid/view/DisplayInfo$1;-><init>()V

    sput-object v0, Landroid/view/DisplayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/view/Display$Mode;->EMPTY_ARRAY:[Landroid/view/Display$Mode;

    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    iput v1, p0, Landroid/view/DisplayInfo;->removeMode:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/view/Display$Mode;->EMPTY_ARRAY:[Landroid/view/Display$Mode;

    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    iput v1, p0, Landroid/view/DisplayInfo;->removeMode:I

    invoke-virtual {p0, p1}, Landroid/view/DisplayInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/DisplayInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/DisplayInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/DisplayInfo;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/view/Display$Mode;->EMPTY_ARRAY:[Landroid/view/Display$Mode;

    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    iput v1, p0, Landroid/view/DisplayInfo;->removeMode:I

    invoke-virtual {p0, p1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    return-void
.end method

.method private findMode(I)Landroid/view/Display$Mode;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    aget-object v1, v1, v0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to locate mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static flagsToString(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_0

    const-string/jumbo v1, ", FLAG_SECURE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_1

    const-string/jumbo v1, ", FLAG_SUPPORTS_PROTECTED_BUFFERS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    const-string/jumbo v1, ", FLAG_PRIVATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    const-string/jumbo v1, ", FLAG_PRESENTATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v1, p0

    if-eqz v1, :cond_4

    const-string/jumbo v1, ", FLAG_SCALING_DISABLED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_5

    const-string/jumbo v1, ", FLAG_ROUND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const/high16 v1, 0x100000

    and-int/2addr v1, p0

    if-eqz v1, :cond_6

    const-string/jumbo v1, ", FLAG_VIRTUAL_SCREEN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const/high16 v1, 0x200000

    and-int/2addr v1, p0

    if-eqz v1, :cond_7

    const-string/jumbo v1, ", FLAG_SHOW_IN_DEFAULT_DEVICE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const/high16 v1, 0x10000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_8

    const-string/jumbo v1, ", FLAG_WIFI_DISPLAY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const/high16 v1, 0x20000000

    and-int/2addr v1, p0

    if-eqz v1, :cond_9

    const-string/jumbo v1, ", FLAG_NO_LOCK_PRESENTATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getMetricsWithSize(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;II)V
    .locals 5

    const v4, 0x3bcccccd    # 0.00625f

    iget v2, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v2, p1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    iput v2, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iget v2, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    iput v2, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    iput v2, p1, Landroid/util/DisplayMetrics;->density:F

    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_DENSITY_CHANGE:Z

    if-eqz v2, :cond_0

    iget v2, p1, Landroid/util/DisplayMetrics;->density:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    if-eqz p3, :cond_0

    iget v2, p3, Landroid/content/res/Configuration;->densityDpi:I

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    int-to-float v2, v2

    iget v3, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    float-to-int v1, v2

    iget v2, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->getFreeformDensity(II)I

    move-result v0

    if-lez v0, :cond_0

    iget v2, p3, Landroid/content/res/Configuration;->densityDpi:I

    if-ne v2, v0, :cond_0

    iget v2, p3, Landroid/content/res/Configuration;->densityDpi:I

    iput v2, p1, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    iput v2, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iget v2, p3, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    iput v2, p1, Landroid/util/DisplayMetrics;->noncompatDensity:F

    iput v2, p1, Landroid/util/DisplayMetrics;->density:F

    :cond_0
    iget v2, p1, Landroid/util/DisplayMetrics;->density:F

    iput v2, p1, Landroid/util/DisplayMetrics;->noncompatScaledDensity:F

    iput v2, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iget v2, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    iput v2, p1, Landroid/util/DisplayMetrics;->noncompatXdpi:F

    iput v2, p1, Landroid/util/DisplayMetrics;->xdpi:F

    iget v2, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    iput v2, p1, Landroid/util/DisplayMetrics;->noncompatYdpi:F

    iput v2, p1, Landroid/util/DisplayMetrics;->ydpi:F

    if-eqz p3, :cond_1

    iget-object v2, p3, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_1

    iget-object v2, p3, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result p4

    :cond_1
    if-eqz p3, :cond_2

    iget-object v2, p3, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_2

    iget-object v2, p3, Landroid/content/res/Configuration;->appBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result p5

    :cond_2
    iget v2, p0, Landroid/view/DisplayInfo;->appWidth:I

    iput v2, p1, Landroid/util/DisplayMetrics;->appWidth:I

    iget v2, p0, Landroid/view/DisplayInfo;->appHeight:I

    iput v2, p1, Landroid/util/DisplayMetrics;->appHeight:I

    iput p4, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p4, p1, Landroid/util/DisplayMetrics;->noncompatWidthPixels:I

    iput p5, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p5, p1, Landroid/util/DisplayMetrics;->noncompatHeightPixels:I

    sget-object v2, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p2, v2}, Landroid/content/res/CompatibilityInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p2, p1}, Landroid/content/res/CompatibilityInfo;->applyToDisplayMetrics(Landroid/util/DisplayMetrics;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public copyFrom(Landroid/view/DisplayInfo;)V
    .locals 2

    iget v0, p1, Landroid/view/DisplayInfo;->layerStack:I

    iput v0, p0, Landroid/view/DisplayInfo;->layerStack:I

    iget v0, p1, Landroid/view/DisplayInfo;->flags:I

    iput v0, p0, Landroid/view/DisplayInfo;->flags:I

    iget v0, p1, Landroid/view/DisplayInfo;->type:I

    iput v0, p0, Landroid/view/DisplayInfo;->type:I

    iget-object v0, p1, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    iget-object v0, p1, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    iget-object v0, p1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iget v0, p1, Landroid/view/DisplayInfo;->appWidth:I

    iput v0, p0, Landroid/view/DisplayInfo;->appWidth:I

    iget v0, p1, Landroid/view/DisplayInfo;->appHeight:I

    iput v0, p0, Landroid/view/DisplayInfo;->appHeight:I

    iget v0, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iput v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iget v0, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iput v0, p0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iget v0, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iput v0, p0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iget v0, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iput v0, p0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iget v0, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v0, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v0, p1, Landroid/view/DisplayInfo;->overscanLeft:I

    iput v0, p0, Landroid/view/DisplayInfo;->overscanLeft:I

    iget v0, p1, Landroid/view/DisplayInfo;->overscanTop:I

    iput v0, p0, Landroid/view/DisplayInfo;->overscanTop:I

    iget v0, p1, Landroid/view/DisplayInfo;->overscanRight:I

    iput v0, p0, Landroid/view/DisplayInfo;->overscanRight:I

    iget v0, p1, Landroid/view/DisplayInfo;->overscanBottom:I

    iput v0, p0, Landroid/view/DisplayInfo;->overscanBottom:I

    iget v0, p1, Landroid/view/DisplayInfo;->rotation:I

    iput v0, p0, Landroid/view/DisplayInfo;->rotation:I

    iget v0, p1, Landroid/view/DisplayInfo;->modeId:I

    iput v0, p0, Landroid/view/DisplayInfo;->modeId:I

    iget v0, p1, Landroid/view/DisplayInfo;->defaultModeId:I

    iput v0, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    iget-object v0, p1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    iget-object v1, p1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/Display$Mode;

    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    iget v0, p1, Landroid/view/DisplayInfo;->colorMode:I

    iput v0, p0, Landroid/view/DisplayInfo;->colorMode:I

    iget-object v0, p1, Landroid/view/DisplayInfo;->supportedColorModes:[I

    iget-object v1, p1, Landroid/view/DisplayInfo;->supportedColorModes:[I

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    iget-object v0, p1, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iput-object v0, p0, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iget v0, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iput v0, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iget v0, p1, Landroid/view/DisplayInfo;->physicalXDpi:F

    iput v0, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    iget v0, p1, Landroid/view/DisplayInfo;->physicalYDpi:F

    iput v0, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    iget-wide v0, p1, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    iput-wide v0, p0, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    iget-wide v0, p1, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    iput-wide v0, p0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    iget v0, p1, Landroid/view/DisplayInfo;->state:I

    iput v0, p0, Landroid/view/DisplayInfo;->state:I

    iget v0, p1, Landroid/view/DisplayInfo;->ownerUid:I

    iput v0, p0, Landroid/view/DisplayInfo;->ownerUid:I

    iget-object v0, p1, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    iput-object v0, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    iget v0, p1, Landroid/view/DisplayInfo;->removeMode:I

    iput v0, p0, Landroid/view/DisplayInfo;->removeMode:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Landroid/view/DisplayInfo;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget v1, p0, Landroid/view/DisplayInfo;->layerStack:I

    iget v2, p1, Landroid/view/DisplayInfo;->layerStack:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/view/DisplayInfo;->flags:I

    iget v2, p1, Landroid/view/DisplayInfo;->flags:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/view/DisplayInfo;->type:I

    iget v2, p1, Landroid/view/DisplayInfo;->type:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    iget-object v2, p1, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    invoke-static {v1, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iget-object v2, p1, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-static {v1, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/view/DisplayInfo;->appWidth:I

    iget v2, p1, Landroid/view/DisplayInfo;->appWidth:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/view/DisplayInfo;->appHeight:I

    iget v2, p1, Landroid/view/DisplayInfo;->appHeight:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    iget v2, p1, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    iget v2, p1, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    iget v2, p1, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    iget v2, p1, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v2, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v2, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/view/DisplayInfo;->overscanLeft:I

    iget v2, p1, Landroid/view/DisplayInfo;->overscanLeft:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/view/DisplayInfo;->overscanTop:I

    iget v2, p1, Landroid/view/DisplayInfo;->overscanTop:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/view/DisplayInfo;->overscanRight:I

    iget v2, p1, Landroid/view/DisplayInfo;->overscanRight:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/view/DisplayInfo;->overscanBottom:I

    iget v2, p1, Landroid/view/DisplayInfo;->overscanBottom:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/view/DisplayInfo;->rotation:I

    iget v2, p1, Landroid/view/DisplayInfo;->rotation:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/view/DisplayInfo;->modeId:I

    iget v2, p1, Landroid/view/DisplayInfo;->modeId:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    iget v2, p1, Landroid/view/DisplayInfo;->defaultModeId:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/view/DisplayInfo;->colorMode:I

    iget v2, p1, Landroid/view/DisplayInfo;->colorMode:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    iget-object v2, p1, Landroid/view/DisplayInfo;->supportedColorModes:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iget-object v2, p1, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-static {v1, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iget v2, p1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    iget v2, p1, Landroid/view/DisplayInfo;->physicalXDpi:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget v1, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    iget v2, p1, Landroid/view/DisplayInfo;->physicalYDpi:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    iget-wide v2, p0, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    iget-wide v4, p1, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-wide v2, p0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    iget-wide v4, p1, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget v1, p0, Landroid/view/DisplayInfo;->state:I

    iget v2, p1, Landroid/view/DisplayInfo;->state:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/view/DisplayInfo;->ownerUid:I

    iget v2, p1, Landroid/view/DisplayInfo;->ownerUid:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/view/DisplayInfo;->removeMode:I

    iget v2, p1, Landroid/view/DisplayInfo;->removeMode:I

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroid/view/DisplayInfo;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/DisplayInfo;

    invoke-virtual {p0, p1}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findDefaultModeByRefreshRate(F)I
    .locals 6

    iget-object v2, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    invoke-virtual {p0}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-object v3, v2, v1

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5, p1}, Landroid/view/Display$Mode;->matches(IIF)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v2, v1

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method public getAppMetrics(Landroid/util/DisplayMetrics;)V
    .locals 2

    sget-object v0, Landroid/content/res/CompatibilityInfo;->DEFAULT_COMPATIBILITY_INFO:Landroid/content/res/CompatibilityInfo;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/DisplayInfo;->getAppMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public getAppMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V
    .locals 6

    iget v4, p0, Landroid/view/DisplayInfo;->appWidth:I

    iget v5, p0, Landroid/view/DisplayInfo;->appHeight:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayInfo;->getMetricsWithSize(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;II)V

    return-void
.end method

.method public getAppMetrics(Landroid/util/DisplayMetrics;Landroid/view/DisplayAdjustments;)V
    .locals 6

    invoke-virtual {p2}, Landroid/view/DisplayAdjustments;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/DisplayAdjustments;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v4, p0, Landroid/view/DisplayInfo;->appWidth:I

    iget v5, p0, Landroid/view/DisplayInfo;->appHeight:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayInfo;->getMetricsWithSize(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;II)V

    return-void
.end method

.method public getDefaultMode()Landroid/view/Display$Mode;
    .locals 1

    iget v0, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    invoke-direct {p0, v0}, Landroid/view/DisplayInfo;->findMode(I)Landroid/view/Display$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultRefreshRates()[F
    .locals 11

    iget-object v4, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {p0}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v9, v4

    if-ge v1, v9, :cond_1

    aget-object v3, v4, v1

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v9

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v10

    if-ne v9, v10, :cond_0

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v9

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v10

    if-ne v9, v10, :cond_0

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v9

    new-array v8, v9, [F

    const/4 v1, 0x0

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v9

    aput v9, v8, v1

    move v1, v2

    goto :goto_1

    :cond_2
    return-object v8
.end method

.method public getLogicalMetrics(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;)V
    .locals 6

    iget v4, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v5, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/view/DisplayInfo;->getMetricsWithSize(Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;II)V

    return-void
.end method

.method public getMode()Landroid/view/Display$Mode;
    .locals 1

    iget v0, p0, Landroid/view/DisplayInfo;->modeId:I

    invoke-direct {p0, v0}, Landroid/view/DisplayInfo;->findMode(I)Landroid/view/Display$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getNaturalHeight()I
    .locals 2

    iget v0, p0, Landroid/view/DisplayInfo;->rotation:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    goto :goto_0
.end method

.method public getNaturalWidth()I
    .locals 2

    iget v0, p0, Landroid/view/DisplayInfo;->rotation:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_0
.end method

.method public hasAccess(I)Z
    .locals 2

    iget v0, p0, Landroid/view/DisplayInfo;->flags:I

    iget v1, p0, Landroid/view/DisplayInfo;->ownerUid:I

    invoke-static {p1, v0, v1}, Landroid/view/Display;->hasAccess(III)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isHdr()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-virtual {v2}, Landroid/view/Display$HdrCapabilities;->getSupportedHdrTypes()[I

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWideColorGamut()Z
    .locals 6

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_2

    aget v0, v3, v1

    const/4 v5, 0x6

    if-eq v0, v5, :cond_0

    const/4 v5, 0x7

    if-le v0, v5, :cond_1

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->layerStack:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->flags:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->type:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->appWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->overscanLeft:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->overscanTop:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->overscanRight:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->overscanBottom:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->modeId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    new-array v3, v2, [Landroid/view/Display$Mode;

    iput-object v3, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v4, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    sget-object v3, Landroid/view/Display$Mode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Display$Mode;

    aput-object v3, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->colorMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-array v3, v1, [I

    iput-object v3, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    iget-object v3, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/view/Display$HdrCapabilities;

    iput-object v3, p0, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->state:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->ownerUid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/view/DisplayInfo;->removeMode:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DisplayInfo{\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\", uniqueId \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "\", app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/DisplayInfo;->appWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", real "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/DisplayInfo;->overscanLeft:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/view/DisplayInfo;->overscanTop:I

    if-eqz v1, :cond_5

    :cond_0
    :goto_0
    const-string/jumbo v1, ", overscan ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/DisplayInfo;->overscanLeft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/DisplayInfo;->overscanTop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/DisplayInfo;->overscanRight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/DisplayInfo;->overscanBottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string/jumbo v1, ", largest app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", smallest app "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/DisplayInfo;->modeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", defaultMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", modes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", colorMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/DisplayInfo;->colorMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", supportedColorModes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", hdrCapabilities "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", rotation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", density "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ") dpi, layerStack "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/DisplayInfo;->layerStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", appVsyncOff "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", presDeadline "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/DisplayInfo;->type:I

    invoke-static {v1}, Landroid/view/Display;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string/jumbo v1, ", address "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string/jumbo v1, ", state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/DisplayInfo;->state:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/DisplayInfo;->ownerUid:I

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    if-eqz v1, :cond_4

    :cond_3
    const-string/jumbo v1, ", owner "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " (uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/DisplayInfo;->ownerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget v1, p0, Landroid/view/DisplayInfo;->flags:I

    invoke-static {v1}, Landroid/view/DisplayInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", removeMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/view/DisplayInfo;->removeMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_5
    iget v1, p0, Landroid/view/DisplayInfo;->overscanRight:I

    if-nez v1, :cond_0

    iget v1, p0, Landroid/view/DisplayInfo;->overscanBottom:I

    if-eqz v1, :cond_1

    goto/16 :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget v1, p0, Landroid/view/DisplayInfo;->layerStack:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/view/DisplayInfo;->flags:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/view/DisplayInfo;->type:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/view/DisplayInfo;->address:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/DisplayInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v1, p0, Landroid/view/DisplayInfo;->appWidth:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/view/DisplayInfo;->smallestNominalAppWidth:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/view/DisplayInfo;->smallestNominalAppHeight:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/view/DisplayInfo;->largestNominalAppWidth:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/view/DisplayInfo;->largestNominalAppHeight:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/view/DisplayInfo;->overscanLeft:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/view/DisplayInfo;->overscanTop:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/view/DisplayInfo;->overscanRight:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/view/DisplayInfo;->overscanBottom:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/view/DisplayInfo;->modeId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/view/DisplayInfo;->defaultModeId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroid/view/Display$Mode;->writeToParcel(Landroid/os/Parcel;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Landroid/view/DisplayInfo;->colorMode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/view/DisplayInfo;->supportedColorModes:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Landroid/view/DisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget v1, p0, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/view/DisplayInfo;->physicalXDpi:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    iget v1, p0, Landroid/view/DisplayInfo;->physicalYDpi:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    iget-wide v2, p0, Landroid/view/DisplayInfo;->appVsyncOffsetNanos:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v2, p0, Landroid/view/DisplayInfo;->presentationDeadlineNanos:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    iget v1, p0, Landroid/view/DisplayInfo;->state:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/view/DisplayInfo;->ownerUid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/view/DisplayInfo;->ownerPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v1, p0, Landroid/view/DisplayInfo;->removeMode:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
