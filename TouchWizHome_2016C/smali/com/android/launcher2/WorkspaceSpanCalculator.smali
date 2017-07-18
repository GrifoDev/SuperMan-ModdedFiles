.class public final enum Lcom/android/launcher2/WorkspaceSpanCalculator;
.super Ljava/lang/Enum;
.source "WorkspaceSpanCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundDown;,
        Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundUp;,
        Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculator;,
        Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher2/WorkspaceSpanCalculator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher2/WorkspaceSpanCalculator;

.field public static final enum INSTANCE:Lcom/android/launcher2/WorkspaceSpanCalculator;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCellCountX:I

.field private mCellCountY:I

.field private mDefaultCellCountX:I

.field private mDefaultCellCountY:I

.field private mDefaultCellLandSizeX:I

.field private mDefaultCellLandSizeY:I

.field private mDefaultCellPortSizeX:I

.field private mDefaultCellPortSizeY:I

.field private mLandCellGapX:I

.field private mLandCellGapY:I

.field private mLandCellSizeX:I

.field private mLandCellSizeY:I

.field private mPaddingDimens:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

.field private mPaddingZero:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

.field private mPkgMgr:Landroid/content/pm/PackageManager;

.field private mPortCellGapX:I

.field private mPortCellGapY:I

.field private mPortCellSizeX:I

.field private mPortCellSizeY:I

.field private mResources:Landroid/content/res/Resources;

.field private mSpanCalcRoundDown:Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundDown;

.field private mSpanCalcRoundUp:Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundUp;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/android/launcher2/WorkspaceSpanCalculator;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/WorkspaceSpanCalculator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/WorkspaceSpanCalculator;->INSTANCE:Lcom/android/launcher2/WorkspaceSpanCalculator;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/launcher2/WorkspaceSpanCalculator;

    sget-object v1, Lcom/android/launcher2/WorkspaceSpanCalculator;->INSTANCE:Lcom/android/launcher2/WorkspaceSpanCalculator;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/launcher2/WorkspaceSpanCalculator;->$VALUES:[Lcom/android/launcher2/WorkspaceSpanCalculator;

    const-class v0, Lcom/android/launcher2/WorkspaceSpanCalculator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/WorkspaceSpanCalculator;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPaddingZero:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    new-instance v0, Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundUp;

    invoke-direct {v0, v2}, Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundUp;-><init>(Lcom/android/launcher2/WorkspaceSpanCalculator$1;)V

    iput-object v0, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mSpanCalcRoundUp:Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundUp;

    new-instance v0, Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundDown;

    invoke-direct {v0, v2}, Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundDown;-><init>(Lcom/android/launcher2/WorkspaceSpanCalculator$1;)V

    iput-object v0, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mSpanCalcRoundDown:Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundDown;

    return-void
.end method

.method private getSpanForWidget(IIII[ILcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculator;ZZ)[I
    .locals 14

    if-eqz p5, :cond_0

    move-object/from16 v0, p5

    array-length v11, v0

    const/4 v12, 0x2

    if-ge v11, v12, :cond_1

    :cond_0
    const/4 v11, 0x2

    new-array v0, v11, [I

    move-object/from16 p5, v0

    :cond_1
    if-eqz p7, :cond_3

    iget-object v11, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v12, 0x7f0a0003

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v11, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v12, 0x7f0a0002

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v11, 0x0

    move-object/from16 v0, p6

    invoke-interface {v0, p1, v8, v11}, Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculator;->getSpanCount(III)I

    move-result v9

    const/4 v11, 0x0

    move-object/from16 v0, p6

    move/from16 v1, p2

    invoke-interface {v0, v1, v8, v11}, Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculator;->getSpanCount(III)I

    move-result v10

    if-eqz p8, :cond_2

    const/4 v11, 0x0

    iget v12, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mCellCountX:I

    invoke-static {v12, v9}, Ljava/lang/Math;->min(II)I

    move-result v12

    aput v12, p5, v11

    const/4 v11, 0x1

    iget v12, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mCellCountY:I

    invoke-static {v12, v10}, Ljava/lang/Math;->min(II)I

    move-result v12

    aput v12, p5, v11

    :goto_0
    return-object p5

    :cond_2
    const/4 v11, 0x0

    iget v12, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mDefaultCellCountX:I

    invoke-static {v12, v9}, Ljava/lang/Math;->min(II)I

    move-result v12

    aput v12, p5, v11

    const/4 v11, 0x1

    iget v12, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mDefaultCellCountY:I

    invoke-static {v12, v10}, Ljava/lang/Math;->min(II)I

    move-result v12

    aput v12, p5, v11

    goto :goto_0

    :cond_3
    iget v11, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mDefaultCellPortSizeX:I

    iget v12, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellGapX:I

    move-object/from16 v0, p6

    invoke-interface {v0, p1, v11, v12}, Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculator;->getSpanCount(III)I

    move-result v6

    iget v11, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mDefaultCellPortSizeY:I

    iget v12, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellGapY:I

    move-object/from16 v0, p6

    move/from16 v1, p2

    invoke-interface {v0, v1, v11, v12}, Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculator;->getSpanCount(III)I

    move-result v7

    iget v11, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mDefaultCellLandSizeX:I

    iget v12, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellGapX:I

    move-object/from16 v0, p6

    move/from16 v1, p3

    invoke-interface {v0, v1, v11, v12}, Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculator;->getSpanCount(III)I

    move-result v4

    iget v11, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mDefaultCellLandSizeY:I

    iget v12, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellGapY:I

    move-object/from16 v0, p6

    move/from16 v1, p4

    invoke-interface {v0, v1, v11, v12}, Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculator;->getSpanCount(III)I

    move-result v5

    iget-object v11, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v12, 0x258

    if-lt v11, v12, :cond_4

    const/4 v11, 0x0

    iget v12, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mDefaultCellCountX:I

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    aput v12, p5, v11

    const/4 v11, 0x1

    iget v12, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mDefaultCellCountY:I

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    aput v12, p5, v11

    goto :goto_0

    :cond_4
    const/4 v11, 0x0

    iget v12, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mDefaultCellCountX:I

    invoke-static {v12, v6}, Ljava/lang/Math;->min(II)I

    move-result v12

    aput v12, p5, v11

    const/4 v11, 0x1

    iget v12, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mDefaultCellCountY:I

    invoke-static {v12, v7}, Ljava/lang/Math;->min(II)I

    move-result v12

    aput v12, p5, v11

    goto :goto_0
.end method

.method private useGEDMode(Landroid/appwidget/AppWidgetProviderInfo;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher2/WorkspaceSpanCalculator;
    .locals 1

    const-class v0, Lcom/android/launcher2/WorkspaceSpanCalculator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/WorkspaceSpanCalculator;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher2/WorkspaceSpanCalculator;
    .locals 1

    sget-object v0, Lcom/android/launcher2/WorkspaceSpanCalculator;->$VALUES:[Lcom/android/launcher2/WorkspaceSpanCalculator;

    invoke-virtual {v0}, [Lcom/android/launcher2/WorkspaceSpanCalculator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher2/WorkspaceSpanCalculator;

    return-object v0
.end method


# virtual methods
.method public getCellCountX()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mCellCountX:I

    return v0
.end method

.method public getCellCountY()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mCellCountY:I

    return v0
.end method

.method public getPaddingForWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;
    .locals 7

    iget-object v2, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPaddingZero:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    :try_start_0
    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPkgMgr:Landroid/content/pm/PackageManager;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v5, 0xe

    if-lt v4, v5, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPaddingDimens:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    :cond_0
    move-object v3, v2

    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    move-object v3, v2

    goto :goto_0
.end method

.method public getResizeSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I
    .locals 11

    const/4 v3, 0x4

    const/4 v10, -0x1

    if-eqz p2, :cond_0

    array-length v0, p2

    if-ge v0, v3, :cond_1

    :cond_0
    new-array p2, v3, [I

    :cond_1
    iget-object v9, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPaddingZero:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    iget-object v0, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0d0004

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getPaddingForWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    move-result-object v9

    :cond_2
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeWidth:I

    iget v3, v9, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->left:I

    add-int/2addr v0, v3

    iget v3, v9, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->right:I

    add-int v1, v0, v3

    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minResizeHeight:I

    iget v3, v9, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->top:I

    add-int/2addr v0, v3

    iget v3, v9, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->bottom:I

    add-int v2, v0, v3

    invoke-direct {p0, p1}, Lcom/android/launcher2/WorkspaceSpanCalculator;->useGEDMode(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v7

    iget-object v6, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mSpanCalcRoundUp:Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundUp;

    const/4 v8, 0x1

    move-object v0, p0

    move v3, v1

    move v4, v2

    move-object v5, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForWidget(IIII[ILcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculator;ZZ)[I

    move-result-object p2

    const/4 v0, 0x2

    aput v10, p2, v0

    const/4 v0, 0x3

    aput v10, p2, v0

    return-object p2
.end method

.method public getSpanForAppWidget(Landroid/appwidget/AppWidgetProviderInfo;II[I)[I
    .locals 9

    invoke-direct {p0, p1}, Lcom/android/launcher2/WorkspaceSpanCalculator;->useGEDMode(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v7

    iget-object v6, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mSpanCalcRoundUp:Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundUp;

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForWidget(IIII[ILcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculator;ZZ)[I

    move-result-object v0

    return-object v0
.end method

.method public getSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I
    .locals 13

    iget-object v9, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPaddingZero:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    iget-object v0, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f0d0004

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getPaddingForWidget(Landroid/content/ComponentName;)Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    move-result-object v9

    :cond_0
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v3, v9, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->left:I

    add-int/2addr v0, v3

    iget v3, v9, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->right:I

    add-int v1, v0, v3

    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    iget v3, v9, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->top:I

    add-int/2addr v0, v3

    iget v3, v9, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;->bottom:I

    add-int v2, v0, v3

    invoke-direct {p0, p1}, Lcom/android/launcher2/WorkspaceSpanCalculator;->useGEDMode(Landroid/appwidget/AppWidgetProviderInfo;)Z

    move-result v7

    iget-object v6, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mSpanCalcRoundUp:Lcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculatorRoundUp;

    const/4 v8, 0x0

    move-object v0, p0

    move v3, v1

    move v4, v2

    move-object v5, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForWidget(IIII[ILcom/android/launcher2/WorkspaceSpanCalculator$SpanCountCalculator;ZZ)[I

    move-result-object v10

    iget v11, p1, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    if-eqz v11, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getResizeSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    move-result-object v12

    and-int/lit8 v0, v11, 0x1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    const/4 v0, 0x0

    const/4 v3, 0x0

    aget v3, v10, v3

    const/4 v4, 0x0

    aget v4, v12, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v10, v0

    const/4 v0, -0x1

    const/4 v3, 0x2

    aget v3, v12, v3

    if-eq v0, v3, :cond_1

    const/4 v0, 0x0

    const/4 v3, 0x0

    aget v3, v10, v3

    const/4 v4, 0x2

    aget v4, v12, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    aput v3, v10, v0

    :cond_1
    and-int/lit8 v0, v11, 0x2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    const/4 v0, 0x1

    const/4 v3, 0x1

    aget v3, v10, v3

    const/4 v4, 0x1

    aget v4, v12, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v10, v0

    const/4 v0, -0x1

    const/4 v3, 0x3

    aget v3, v12, v3

    if-eq v0, v3, :cond_2

    const/4 v0, 0x1

    const/4 v3, 0x1

    aget v3, v10, v3

    const/4 v4, 0x3

    aget v4, v12, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    aput v3, v10, v0

    :cond_2
    return-object v10
.end method

.method public setCellSize(IIII)V
    .locals 2

    iput p1, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellSizeX:I

    iput p2, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellSizeY:I

    iput p3, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellGapX:I

    iput p4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellGapY:I

    iget-object v0, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a00f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mDefaultCellLandSizeX:I

    iput v0, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellSizeX:I

    iget-object v0, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a00ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mDefaultCellLandSizeY:I

    iput v0, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellSizeY:I

    iget-object v0, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a00e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellGapX:I

    iget-object v0, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a00ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellGapY:I

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a0233

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mDefaultCellLandSizeX:I

    iput v0, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellSizeX:I

    iget-object v0, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a0232

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mDefaultCellLandSizeY:I

    iput v0, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellSizeY:I

    iget-object v0, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a0231

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellGapX:I

    iget-object v0, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a01ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellGapY:I

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_5x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a0237

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mDefaultCellLandSizeX:I

    iput v0, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellSizeX:I

    iget-object v0, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a0236

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mDefaultCellLandSizeY:I

    iput v0, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellSizeY:I

    iget-object v0, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a0235

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellGapX:I

    iget-object v0, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0a01d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellGapY:I

    :cond_1
    return-void
.end method

.method public setLauncherApplication(Lcom/android/launcher2/LauncherApplication;)V
    .locals 11

    const v10, 0x7f0a0233

    const v9, 0x7f0a0232

    const v8, 0x7f0a0231

    const v7, 0x7f0a01d0

    const v6, 0x7f0a01ce

    invoke-virtual {p1}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPkgMgr:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0a0333

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0a0335

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0a0334

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0a0332

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v4, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    invoke-direct {v4, v1, v3, v2, v0}, Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;-><init>(IIII)V

    iput-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPaddingDimens:Lcom/android/launcher2/WorkspaceSpanCalculator$Padding;

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0c002d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mCellCountX:I

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0c002e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mCellCountY:I

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0c0005

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mDefaultCellCountX:I

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0c0006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mDefaultCellCountY:I

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0a00f3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mDefaultCellPortSizeX:I

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellSizeX:I

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0a00f0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mDefaultCellPortSizeY:I

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellSizeY:I

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0a00f2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mDefaultCellLandSizeX:I

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellSizeX:I

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0a00ef

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mDefaultCellLandSizeY:I

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellSizeY:I

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0a00ea

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellGapX:I

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0a00ed

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellGapY:I

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0a00e9

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellGapX:I

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0a00ec

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellGapY:I

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_4x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mDefaultCellPortSizeX:I

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellSizeX:I

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mDefaultCellPortSizeY:I

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellSizeY:I

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mDefaultCellLandSizeX:I

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellSizeX:I

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mDefaultCellLandSizeY:I

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellSizeY:I

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellGapX:I

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellGapY:I

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellGapX:I

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellGapY:I

    :cond_0
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getLauncherGridSize()Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/LauncherApplication$HomeGridSize;->GRID_5x5:Lcom/android/launcher2/LauncherApplication$HomeGridSize;

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0a0237

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mDefaultCellPortSizeX:I

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellSizeX:I

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0a0236

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mDefaultCellPortSizeY:I

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellSizeY:I

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0a0237

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mDefaultCellLandSizeX:I

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellSizeX:I

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0a0236

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mDefaultCellLandSizeY:I

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellSizeY:I

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0a0235

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellGapX:I

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellGapY:I

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    const v5, 0x7f0a0235

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellGapX:I

    iget-object v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellGapY:I

    :cond_1
    return-void
.end method

.method public updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher2/Launcher;II)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v9, v1, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellSizeX:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellSizeY:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellGapX:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mLandCellGapY:I

    mul-int v1, p3, v8

    add-int/lit8 v16, p3, -0x1

    mul-int v16, v16, v15

    add-int v1, v1, v16

    int-to-float v1, v1

    div-float/2addr v1, v9

    float-to-int v5, v1

    mul-int v1, p4, v7

    add-int/lit8 v16, p4, -0x1

    mul-int v16, v16, v10

    add-int v1, v1, v16

    int-to-float v1, v1

    div-float/2addr v1, v9

    float-to-int v4, v1

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellSizeX:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellSizeY:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellGapX:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/launcher2/WorkspaceSpanCalculator;->mPortCellGapY:I

    mul-int v1, p3, v8

    add-int/lit8 v16, p3, -0x1

    mul-int v16, v16, v15

    add-int v1, v1, v16

    int-to-float v1, v1

    div-float/2addr v1, v9

    float-to-int v3, v1

    mul-int v1, p4, v7

    add-int/lit8 v16, p4, -0x1

    mul-int v16, v16, v10

    add-int v1, v1, v16

    int-to-float v1, v1

    div-float/2addr v1, v9

    float-to-int v6, v1

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportFlexibleGrid()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v1, p1

    check-cast v1, Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getresizeResult()Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;

    move-result-object v12

    iget v1, v12, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->width:I

    if-eqz v1, :cond_0

    iget v1, v12, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->height:I

    if-nez v1, :cond_1

    :cond_0
    mul-int v16, p3, v8

    const/4 v1, 0x2

    move/from16 v0, p3

    if-lt v0, v1, :cond_4

    add-int/lit8 v1, p3, -0x1

    mul-int/2addr v1, v15

    :goto_0
    add-int v14, v16, v1

    mul-int v16, p4, v7

    const/4 v1, 0x2

    move/from16 v0, p4

    if-lt v0, v1, :cond_5

    add-int/lit8 v1, p4, -0x1

    mul-int/2addr v1, v10

    :goto_1
    add-int v13, v16, v1

    move-object/from16 v11, p1

    check-cast v11, Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v11, v14, v13}, Lcom/android/launcher2/LauncherAppWidgetHostView;->calculateWidgetSize(II)Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;

    move-result-object v12

    :cond_1
    mul-int/lit8 v1, v3, 0x1

    int-to-float v1, v1

    iget v0, v12, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    move/from16 v16, v0

    div-float v1, v1, v16

    float-to-int v3, v1

    mul-int/lit8 v1, v6, 0x1

    int-to-float v1, v1

    iget v0, v12, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    move/from16 v16, v0

    div-float v1, v1, v16

    float-to-int v6, v1

    mul-int/lit8 v1, v5, 0x1

    int-to-float v1, v1

    iget v0, v12, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    move/from16 v16, v0

    div-float v1, v1, v16

    float-to-int v5, v1

    mul-int/lit8 v1, v4, 0x1

    int-to-float v1, v1

    iget v0, v12, Lcom/android/launcher2/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    move/from16 v16, v0

    div-float v1, v1, v16

    float-to-int v4, v1

    invoke-static {}, Lcom/android/launcher2/Utilities;->isMobileKeyboardMode()Z

    move-result v1

    if-eqz v1, :cond_2

    int-to-float v1, v3

    const v16, 0x3f333333    # 0.7f

    mul-float v1, v1, v16

    float-to-int v3, v1

    int-to-float v1, v5

    const v16, 0x3f333333    # 0.7f

    mul-float v1, v1, v16

    float-to-int v5, v1

    :cond_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v1, p1

    check-cast v1, Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getIsSetFlingOption()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "fling"

    const/16 v16, -0x1

    move/from16 v0, v16

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    sget-object v1, Lcom/android/launcher2/WorkspaceSpanCalculator;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "updateWidgetSizeRanges() "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " / "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " , "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " / "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " [widget id : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "]"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIII)V

    return-void

    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v1, 0x0

    goto/16 :goto_1
.end method
