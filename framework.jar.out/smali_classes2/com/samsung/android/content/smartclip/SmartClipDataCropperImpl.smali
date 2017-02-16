.class public Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;
.super Lcom/samsung/android/content/smartclip/SemSmartClipDataCropper;
.source "SmartClipDataCropperImpl.java"


# static fields
.field private static DEBUG:Z = false

.field public static final EXTRACTION_LEVEL_0:I = 0x0

.field public static final EXTRACTION_LEVEL_1:I = 0x1

.field private static final EXTRACTION_RESULT_MAIN_MASKING:I = 0xff

.field private static final MAX_META_VALUE_SIZE:I = 0x19000

.field private static final META_NAME_SUPPORT_THIRD_PARTY_EXTRACTION_INTERFACE:Ljava/lang/String; = "com.samsung.android.smartclip.support_custom_smartclip_metaextraction"

.field private static final TAG:Ljava/lang/String; = "SmartClipDataCropperImpl"

.field private static final YOUTUBE_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.youtube"

.field private static final YOUTUBE_URL_PREFIX:Ljava/lang/String; = "http://www.youtube.com/watch?v="


# instance fields
.field private mChromeBrowserContentViewName:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mExtractionLevel:I

.field protected mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

.field private mExtractionStartTime:J

.field protected mIsExtractingData:Z

.field private mLastMetaFileId:I

.field protected mPackageName:Ljava/lang/String;

.field private mPenWindowBorderWidth:I

.field protected mPendingElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mScaleRect:Landroid/graphics/RectF;

.field protected mSmartClipDataRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

.field private mSupportThirdPartyExtractionInterface:Z

.field private mUseViewPositionCache:Z

.field private mViewPositionCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mWinFrameRect:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->getViewBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;Landroid/view/View;Landroid/os/Bundle;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "resultElement"    # Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->updateDataElementWithBundle(Landroid/view/View;Landroid/os/Bundle;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->DEBUG:Z

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extractionRequest"    # Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 101
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v5, v5, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v0, v0, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;Landroid/graphics/Rect;Landroid/graphics/RectF;I)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;Landroid/graphics/Rect;Landroid/graphics/RectF;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "extractionRequest"    # Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;
    .param p3, "winFrameRect"    # Landroid/graphics/Rect;
    .param p4, "scaleRect"    # Landroid/graphics/RectF;
    .param p5, "penWindowBorderWidth"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 104
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SemSmartClipDataCropper;-><init>()V

    .line 75
    iput-object v2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mWinFrameRect:Landroid/graphics/Rect;

    .line 76
    iput-object v2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mScaleRect:Landroid/graphics/RectF;

    .line 77
    iput v4, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPenWindowBorderWidth:I

    .line 80
    iput-object v2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPendingElements:Ljava/util/ArrayList;

    .line 83
    iput-object v2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    .line 85
    iput-boolean v4, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mIsExtractingData:Z

    .line 86
    iput v4, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionLevel:I

    .line 88
    iput-object v2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    .line 90
    iput-object v2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mChromeBrowserContentViewName:Ljava/lang/String;

    .line 91
    iput-boolean v4, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mSupportThirdPartyExtractionInterface:Z

    .line 92
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionStartTime:J

    .line 93
    iput v4, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mLastMetaFileId:I

    .line 97
    iput-boolean v4, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mUseViewPositionCache:Z

    .line 98
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mViewPositionCache:Ljava/util/HashMap;

    .line 105
    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mContext:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    .line 107
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mWinFrameRect:Landroid/graphics/Rect;

    .line 108
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, p4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mScaleRect:Landroid/graphics/RectF;

    .line 109
    iput p5, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPenWindowBorderWidth:I

    .line 111
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    .line 112
    iget-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 113
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/samsung/android/content/smartclip/SmartClipUtils;->getChromeViewClassNameFromManifest(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mChromeBrowserContentViewName:Ljava/lang/String;

    .line 120
    iget-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->isThirdPartyExtractionInterfaceEnabledOnManifest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mSupportThirdPartyExtractionInterface:Z

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 123
    .local v0, "pm":Landroid/content/pm/PackageManager;
    if-eqz v0, :cond_1

    .line 125
    iput v4, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionLevel:I

    .line 128
    iput v5, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionLevel:I

    .line 132
    const-string/jumbo v1, "com.samsung.android.smartclip.DEBUG"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    sput-boolean v5, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->DEBUG:Z

    .line 104
    :cond_1
    return-void
.end method

.method private adjustMetaAreaRect(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v8, 0x0

    .line 691
    invoke-direct {p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->getViewBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    .line 692
    .local v4, "screenRectOfView":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 694
    .local v1, "intersection":Landroid/graphics/Rect;
    if-nez p2, :cond_0

    .line 695
    const-string/jumbo v5, "SmartClipDataCropperImpl"

    const-string/jumbo v6, "adjustMetaAreaRect : rect is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    return-object v8

    .line 700
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 701
    .local v0, "curView":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_2

    .line 702
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    move-object v5, v0

    .line 703
    nop

    nop

    invoke-direct {p0, v5}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->getViewBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    .line 704
    .local v3, "parentViewRect":Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 705
    .local v2, "intersectionWithParentView":Landroid/graphics/Rect;
    invoke-virtual {v2, v4, v3}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 706
    move-object v4, v2

    .line 709
    .end local v2    # "intersectionWithParentView":Landroid/graphics/Rect;
    .end local v3    # "parentViewRect":Landroid/graphics/Rect;
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 712
    :cond_2
    invoke-virtual {v1, p2, v4}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 713
    return-object v1

    .line 715
    :cond_3
    const-string/jumbo v5, "SmartClipDataCropperImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "adjustMetaAreaRect : there is no intersection "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " and "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    return-object v8
.end method

.method private allocateMetaTagFilePath()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 873
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/smartclip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 874
    .local v1, "baseDirPath":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 875
    .local v0, "baseDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 876
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 877
    invoke-virtual {v0, v6, v5}, Ljava/io/File;->setWritable(ZZ)Z

    .line 878
    invoke-virtual {v0, v6, v5}, Ljava/io/File;->setReadable(ZZ)Z

    .line 879
    invoke-virtual {v0, v6, v5}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 882
    :cond_0
    iget v3, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mLastMetaFileId:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mLastMetaFileId:I

    .line 883
    iget v3, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mLastMetaFileId:I

    rem-int/lit8 v3, v3, 0x3

    iput v3, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mLastMetaFileId:I

    .line 884
    const-string/jumbo v3, "%s/SC%02d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    iget v5, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mLastMetaFileId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 885
    .local v2, "filePathName":Ljava/lang/String;
    return-object v2
.end method

.method private extractDefaultSmartClipData_GoogleChromeView(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)I
    .locals 18
    .param p1, "view"    # Landroid/view/View;
    .param p2, "croppedArea"    # Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;
    .param p3, "resultElement"    # Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    .prologue
    .line 526
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const-string/jumbo v14, "extractSmartClipData"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Class;

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x0

    aput-object v16, v15, v17

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x1

    aput-object v16, v15, v17

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x2

    aput-object v16, v15, v17

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x3

    aput-object v16, v15, v17

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 527
    .local v5, "extractSmartClipDataMethod":Ljava/lang/reflect/Method;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const-string/jumbo v14, "setSmartClipResultHandler"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const-class v16, Landroid/os/Handler;

    const/16 v17, 0x0

    aput-object v16, v15, v17

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 529
    .local v10, "setSmartClipResultHandlerMethod":Ljava/lang/reflect/Method;
    if-eqz v5, :cond_1

    if-eqz v10, :cond_1

    .line 530
    const-string/jumbo v13, "SmartClipDataCropperImpl"

    const-string/jumbo v14, "Extracting meta data from Chrome view..."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    new-instance v8, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p1

    invoke-direct {v8, v0, v1, v2, v10}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$1;-><init>(Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;Landroid/view/View;Ljava/lang/reflect/Method;)V

    .line 596
    .local v8, "handler":Landroid/os/Handler;
    new-instance v3, Landroid/graphics/Rect;

    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;->getRect()Landroid/graphics/Rect;

    move-result-object v13

    invoke-direct {v3, v13}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 597
    .local v3, "cropRect":Landroid/graphics/Rect;
    const/4 v13, 0x2

    new-array v9, v13, [I

    .line 598
    .local v9, "screenPosOfView":[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 599
    const/4 v13, 0x0

    aget v13, v9, v13

    neg-int v13, v13

    const/4 v14, 0x1

    aget v14, v9, v14

    neg-int v14, v14

    invoke-virtual {v3, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 601
    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    move-object/from16 v0, p1

    invoke-virtual {v10, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    sget-boolean v13, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->DEBUG:Z

    if-eqz v13, :cond_0

    .line 604
    const-string/jumbo v13, "SmartClipDataCropperImpl"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Converting coordinate : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;->getRect()Landroid/graphics/Rect;

    move-result-object v15

    invoke-virtual {v15}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " -> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    :cond_0
    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/Object;

    iget v14, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v13, v15

    iget v14, v3, Landroid/graphics/Rect;->top:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v13, v15

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x2

    aput-object v14, v13, v15

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x3

    aput-object v14, v13, v15

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 608
    const/4 v13, 0x2

    return v13

    .line 610
    .end local v3    # "cropRect":Landroid/graphics/Rect;
    .end local v5    # "extractSmartClipDataMethod":Ljava/lang/reflect/Method;
    .end local v8    # "handler":Landroid/os/Handler;
    .end local v9    # "screenPosOfView":[I
    .end local v10    # "setSmartClipResultHandlerMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v4

    .line 611
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v13, "SmartClipDataCropperImpl"

    const-string/jumbo v14, "Current chrome view does not support smartclip"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const-string/jumbo v14, "getUrl"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Class;

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 617
    .local v7, "getUrlMethod":Ljava/lang/reflect/Method;
    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v7, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 618
    .local v12, "url":Ljava/lang/String;
    new-instance v13, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    const-string/jumbo v14, "url"

    invoke-direct {v13, v14, v12}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z

    .line 620
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    const-string/jumbo v14, "getTitle"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Class;

    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 621
    .local v6, "getTitleMethod":Ljava/lang/reflect/Method;
    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    move-object/from16 v0, p1

    invoke-virtual {v6, v0, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 622
    .local v11, "title":Ljava/lang/String;
    new-instance v13, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    const-string/jumbo v14, "title"

    invoke-direct {v13, v14, v11}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z

    .line 624
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    if-eqz v13, :cond_2

    .line 625
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    iget v13, v13, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    if-nez v13, :cond_3

    .line 626
    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;->getRect()Landroid/graphics/Rect;

    move-result-object v13

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setMetaAreaRect(Landroid/graphics/Rect;)V

    .line 634
    .end local v6    # "getTitleMethod":Ljava/lang/reflect/Method;
    .end local v7    # "getUrlMethod":Ljava/lang/reflect/Method;
    .end local v11    # "title":Ljava/lang/String;
    .end local v12    # "url":Ljava/lang/String;
    :cond_2
    :goto_0
    const/4 v13, 0x1

    return v13

    .line 627
    .restart local v6    # "getTitleMethod":Ljava/lang/reflect/Method;
    .restart local v7    # "getUrlMethod":Ljava/lang/reflect/Method;
    .restart local v11    # "title":Ljava/lang/String;
    .restart local v12    # "url":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    iget v13, v13, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v14, 0x2

    if-ne v13, v14, :cond_2

    goto :goto_0

    .line 631
    .end local v6    # "getTitleMethod":Ljava/lang/reflect/Method;
    .end local v7    # "getUrlMethod":Ljava/lang/reflect/Method;
    .end local v11    # "title":Ljava/lang/String;
    .end local v12    # "url":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 632
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private extractDefaultSmartClipData_ImageView(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)I
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "croppedArea"    # Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;
    .param p3, "resultElement"    # Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    .prologue
    .line 493
    const-string/jumbo v1, "plain_text"

    invoke-virtual {p3, v1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getTags(Ljava/lang/String;)Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    move-object v0, p1

    .line 494
    check-cast v0, Landroid/widget/ImageView;

    .line 495
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 496
    :cond_0
    new-instance v1, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    const-string/jumbo v2, "plain_text"

    const-string/jumbo v3, ""

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->addTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z

    .line 499
    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private extractDefaultSmartClipData_TextView(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)I
    .locals 12
    .param p1, "view"    # Landroid/view/View;
    .param p2, "croppedArea"    # Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;
    .param p3, "resultElement"    # Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    .prologue
    const/4 v11, 0x0

    .line 454
    const-string/jumbo v9, "plain_text"

    invoke-virtual {p3, v9}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getTags(Ljava/lang/String;)Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_4

    move-object v7, p1

    .line 455
    check-cast v7, Landroid/widget/TextView;

    .line 456
    .local v7, "textView":Landroid/widget/TextView;
    invoke-virtual {v7}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v8

    .line 458
    .local v8, "transformationMethod":Landroid/text/method/TransformationMethod;
    if-eqz v8, :cond_0

    .line 459
    instance-of v9, v8, Landroid/text/method/PasswordTransformationMethod;

    if-nez v9, :cond_4

    .line 460
    :cond_0
    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 461
    .local v0, "charSequence":Ljava/lang/CharSequence;
    if-nez v0, :cond_1

    .line 462
    const-string/jumbo v0, ""

    .line 466
    :cond_1
    iget-object v9, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    iget v9, v9, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    .line 468
    invoke-interface {p2}, Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;->getRect()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->getSpannedTextRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    .line 469
    .local v6, "spanRect":Landroid/graphics/Rect;
    if-eqz v6, :cond_2

    .line 470
    invoke-virtual {p3, v6}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setMetaAreaRect(Landroid/graphics/Rect;)V

    .line 471
    const-string/jumbo v0, ""

    .line 474
    :cond_2
    invoke-virtual {v7}, Landroid/widget/TextView;->hasSelection()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 475
    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 476
    .local v4, "selStart":I
    invoke-virtual {v7}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 477
    .local v3, "selEnd":I
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 478
    .local v2, "min":I
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v11, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 480
    .local v1, "max":I
    invoke-interface {v0, v2, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 481
    .local v5, "selectedText":Ljava/lang/CharSequence;
    if-eqz v5, :cond_3

    .line 482
    new-instance v9, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    const-string/jumbo v10, "text_selection"

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v9}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->addTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z

    .line 486
    .end local v1    # "max":I
    .end local v2    # "min":I
    .end local v3    # "selEnd":I
    .end local v4    # "selStart":I
    .end local v5    # "selectedText":Ljava/lang/CharSequence;
    .end local v6    # "spanRect":Landroid/graphics/Rect;
    :cond_3
    new-instance v9, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    const-string/jumbo v10, "plain_text"

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v9}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->addTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z

    .line 489
    .end local v0    # "charSequence":Ljava/lang/CharSequence;
    .end local v7    # "textView":Landroid/widget/TextView;
    .end local v8    # "transformationMethod":Landroid/text/method/TransformationMethod;
    :cond_4
    const/4 v9, 0x1

    return v9
.end method

.method private extractDefaultSmartClipData_TextureView(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "croppedArea"    # Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;
    .param p3, "resultElement"    # Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    .prologue
    .line 518
    const-string/jumbo v0, "plain_text"

    invoke-virtual {p3, v0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getTags(Ljava/lang/String;)Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 519
    new-instance v0, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    const-string/jumbo v1, "plain_text"

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->addTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z

    .line 521
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private extractDefaultSmartClipData_ThirdPartyInterface(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)I
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "croppedArea"    # Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;
    .param p3, "resultElement"    # Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 639
    move-object v3, p1

    .line 640
    .local v3, "invokeObj":Ljava/lang/Object;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->getThirPartyExtractionInterfaceMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 641
    .local v1, "extractSmartClipDataMethod":Ljava/lang/reflect/Method;
    if-nez v1, :cond_0

    .line 642
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 643
    if-eqz v3, :cond_0

    .line 644
    invoke-direct {p0, v3}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->getThirPartyExtractionInterfaceMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 648
    :cond_0
    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    .line 649
    const-string/jumbo v5, "SmartClipDataCropperImpl"

    const-string/jumbo v6, "Extracting meta data using third party interface..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    new-instance v2, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$2;

    invoke-direct {v2, p0, p3, p1}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl$2;-><init>(Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;Landroid/view/View;)V

    .line 667
    .local v2, "handler":Landroid/os/Handler;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {p2}, Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;->getRect()Landroid/graphics/Rect;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-virtual {v1, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 668
    .local v4, "retValue":Ljava/lang/Object;
    if-eqz v4, :cond_1

    instance-of v5, v4, Landroid/os/Bundle;

    if-eqz v5, :cond_1

    .line 669
    const-string/jumbo v5, "SmartClipDataCropperImpl"

    const-string/jumbo v6, "Bundle data returned immediately from third party"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    nop

    nop

    .end local v4    # "retValue":Ljava/lang/Object;
    invoke-direct {p0, p1, v4, p3}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->updateDataElementWithBundle(Landroid/view/View;Landroid/os/Bundle;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)Z

    .line 671
    return v8

    .line 673
    .restart local v4    # "retValue":Ljava/lang/Object;
    :cond_1
    const-string/jumbo v5, "SmartClipDataCropperImpl"

    const-string/jumbo v6, "Null returned immediately from third party. waiting pending meta data.."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    return v9

    .line 677
    .end local v1    # "extractSmartClipDataMethod":Ljava/lang/reflect/Method;
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v4    # "retValue":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 678
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "SmartClipDataCropperImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception is thrown during execute the third party smartclip interface. e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 682
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    return v8
.end method

.method private extractDefaultSmartClipData_YoutubePlayerView(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "croppedArea"    # Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;
    .param p3, "resultElement"    # Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    .prologue
    .line 450
    const/4 v0, 0x1

    return v0
.end method

.method private filterMetaTagForBrowserViews(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)V
    .locals 14
    .param p1, "element"    # Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    .prologue
    .line 782
    if-nez p1, :cond_0

    .line 783
    const-string/jumbo v11, "SmartClipDataCropperImpl"

    const-string/jumbo v12, "filterMetaTagForBrowserViews : element is null!"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    return-void

    .line 787
    :cond_0
    move-object v0, p1

    .line 789
    .local v0, "curElement":Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    :goto_0
    if-eqz v0, :cond_8

    .line 790
    invoke-virtual {v0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getTagTable()Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    move-result-object v5

    .line 791
    .local v5, "tags":Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;
    if-eqz v5, :cond_7

    .line 792
    invoke-virtual {v0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getView()Landroid/view/View;

    move-result-object v9

    .line 793
    .local v9, "view":Landroid/view/View;
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v10

    .line 795
    .local v10, "viewName":Ljava/lang/String;
    :goto_1
    const-string/jumbo v11, "html"

    invoke-virtual {v5, v11}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;->getMetaTags(Ljava/lang/String;)Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 796
    .local v4, "htmlTagCount":I
    const-string/jumbo v11, "plain_text"

    invoke-virtual {v5, v11}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;->getMetaTags(Ljava/lang/String;)Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 797
    .local v6, "textTagCount":I
    if-lez v4, :cond_3

    if-lez v6, :cond_3

    .line 798
    iget v11, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionLevel:I

    packed-switch v11, :pswitch_data_0

    .line 808
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "curTag$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    .line 809
    .local v1, "curTag":Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;
    const-string/jumbo v11, "plain_text"

    invoke-virtual {v1}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 810
    const-string/jumbo v11, "html_text"

    invoke-virtual {v1, v11}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->setType(Ljava/lang/String;)V

    goto :goto_2

    .line 793
    .end local v1    # "curTag":Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;
    .end local v2    # "curTag$iterator":Ljava/util/Iterator;
    .end local v4    # "htmlTagCount":I
    .end local v6    # "textTagCount":I
    .end local v10    # "viewName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v10, "null"

    .restart local v10    # "viewName":Ljava/lang/String;
    goto :goto_1

    .line 801
    .restart local v4    # "htmlTagCount":I
    .restart local v6    # "textTagCount":I
    :pswitch_0
    const-string/jumbo v11, "html"

    invoke-virtual {v5, v11}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;->removeMetaTags(Ljava/lang/String;)I

    .line 802
    const-string/jumbo v11, "SmartClipDataCropperImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "filterMetaTagForBrowserViews : Discarding HTML tag from "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    :cond_3
    :goto_3
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "curTag$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    .line 821
    .restart local v1    # "curTag":Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;
    invoke-virtual {v1}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->getType()Ljava/lang/String;

    move-result-object v7

    .line 822
    .local v7, "type":Ljava/lang/String;
    const-string/jumbo v11, "html"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 823
    invoke-virtual {v1}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->getValue()Ljava/lang/String;

    move-result-object v8

    .line 824
    .local v8, "value":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    const v12, 0x19000

    if-le v11, v12, :cond_4

    .line 825
    const-string/jumbo v11, "SmartClipDataCropperImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "filterMetaTagForBrowserViews : Have large HTML data("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " bytes). Converting tag.."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    invoke-direct {p0}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->allocateMetaTagFilePath()Ljava/lang/String;

    move-result-object v3

    .line 827
    .local v3, "filePathName":Ljava/lang/String;
    invoke-direct {p0, v3, v8}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 828
    const-string/jumbo v11, "SmartClipDataCropperImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "filterMetaTagForBrowserViews : Failed to save meta tag! - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    :goto_5
    const-string/jumbo v11, "file_path_html"

    invoke-virtual {v1, v11}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->setType(Ljava/lang/String;)V

    .line 833
    invoke-virtual {v1, v3}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->setValue(Ljava/lang/String;)V

    goto :goto_4

    .line 813
    .end local v1    # "curTag":Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;
    .end local v3    # "filePathName":Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_5
    const-string/jumbo v11, "SmartClipDataCropperImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "filterMetaTagForBrowserViews : The TEXT tag changed to HTML_TEXT. View="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 830
    .restart local v1    # "curTag":Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;
    .restart local v3    # "filePathName":Ljava/lang/String;
    .restart local v7    # "type":Ljava/lang/String;
    .restart local v8    # "value":Ljava/lang/String;
    :cond_6
    const-string/jumbo v11, "SmartClipDataCropperImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "filterMetaTagForBrowserViews : Saved the meta tag to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 838
    .end local v1    # "curTag":Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;
    .end local v2    # "curTag$iterator":Ljava/util/Iterator;
    .end local v3    # "filePathName":Ljava/lang/String;
    .end local v4    # "htmlTagCount":I
    .end local v6    # "textTagCount":I
    .end local v7    # "type":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    .end local v9    # "view":Landroid/view/View;
    .end local v10    # "viewName":Ljava/lang/String;
    :cond_7
    invoke-virtual {v0, p1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    goto/16 :goto_0

    .line 781
    .end local v5    # "tags":Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;
    :cond_8
    return-void

    .line 798
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private getChildViewsByZOrder(Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .locals 12
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 889
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 890
    .local v2, "childCount":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 892
    .local v3, "childViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v8, 0x0

    .line 893
    .local v8, "zOrderExist":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v2, :cond_2

    .line 894
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 895
    .local v4, "currentChild":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getZ()F

    move-result v5

    .line 896
    .local v5, "currentZ":F
    const/4 v9, 0x0

    cmpl-float v9, v5, v9

    if-eqz v9, :cond_0

    .line 897
    const/4 v8, 0x1

    .line 901
    :cond_0
    move v7, v6

    .line 902
    .local v7, "insertIndex":I
    :goto_1
    if-lez v7, :cond_1

    add-int/lit8 v9, v7, -0x1

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getZ()F

    move-result v9

    cmpl-float v9, v9, v5

    if-lez v9, :cond_1

    .line 903
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 905
    :cond_1
    invoke-virtual {v3, v7, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 893
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 908
    .end local v4    # "currentChild":Landroid/view/View;
    .end local v5    # "currentZ":F
    .end local v7    # "insertIndex":I
    :cond_2
    if-eqz v8, :cond_3

    .line 909
    const-string/jumbo v9, "SmartClipDataCropperImpl"

    const-string/jumbo v10, "getChildViewsByZOrder : Z order detected"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "child$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 911
    .local v0, "child":Landroid/view/View;
    const-string/jumbo v9, "SmartClipDataCropperImpl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getChildViewsByZOrder : Parent="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " / View="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " / Z="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Landroid/view/View;->getZ()F

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 915
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "child$iterator":Ljava/util/Iterator;
    :cond_3
    return-object v3
.end method

.method private getMainResultFromExtractionResult(I)I
    .locals 1
    .param p1, "extractionResult"    # I

    .prologue
    .line 687
    and-int/lit16 v0, p1, 0xff

    return v0
.end method

.method private getOpaqueBackgroundRect(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)Landroid/graphics/Rect;
    .locals 9
    .param p1, "element"    # Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    .prologue
    .line 722
    move-object v2, p1

    .line 723
    .local v2, "curElement":Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    const/4 v4, 0x0

    .line 725
    :goto_0
    if-eqz v2, :cond_2

    .line 726
    invoke-virtual {v2}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getView()Landroid/view/View;

    move-result-object v5

    .line 727
    .local v5, "view":Landroid/view/View;
    if-eqz v5, :cond_0

    .line 728
    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 729
    .local v1, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v6

    const/4 v7, -0x2

    if-eq v6, v7, :cond_0

    .line 730
    invoke-virtual {v2}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getMetaAreaRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 731
    .local v3, "metaRect":Landroid/graphics/Rect;
    if-eqz v3, :cond_0

    .line 732
    invoke-direct {p0, v5, v3}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->adjustMetaAreaRect(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 733
    .local v0, "adjustedRect":Landroid/graphics/Rect;
    if-eqz v0, :cond_0

    .line 734
    if-nez v4, :cond_1

    .line 735
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 743
    .end local v0    # "adjustedRect":Landroid/graphics/Rect;
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    .end local v3    # "metaRect":Landroid/graphics/Rect;
    :cond_0
    :goto_1
    invoke-virtual {v2, p1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v2

    goto :goto_0

    .line 737
    .restart local v0    # "adjustedRect":Landroid/graphics/Rect;
    .restart local v1    # "background":Landroid/graphics/drawable/Drawable;
    .restart local v3    # "metaRect":Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {v4, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 745
    .end local v0    # "adjustedRect":Landroid/graphics/Rect;
    .end local v1    # "background":Landroid/graphics/drawable/Drawable;
    .end local v3    # "metaRect":Landroid/graphics/Rect;
    .end local v5    # "view":Landroid/view/View;
    :cond_2
    const-string/jumbo v6, "SmartClipDataCropperImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getOpaqueBackgroundRect : opaqueRect="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "  element="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    return-object v4
.end method

.method private getThirPartyExtractionInterfaceMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 7
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 956
    if-nez p1, :cond_0

    .line 957
    return-object v2

    .line 960
    :cond_0
    const/4 v1, 0x0

    .line 962
    .local v1, "method":Ljava/lang/reflect/Method;
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string/jumbo v3, "extractSmartClipData"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/os/Handler;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 965
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v1

    .line 963
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private getViewBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 341
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 342
    .local v1, "screenRectOfView":Landroid/graphics/Rect;
    invoke-direct {p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->getViewLocationOnScreen(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    .line 344
    .local v0, "screenPointOfView":Landroid/graphics/Point;
    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 345
    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 346
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 347
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 349
    return-object v1
.end method

.method private getViewLocationOnScreen(Landroid/view/View;)Landroid/graphics/Point;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 353
    const/4 v0, 0x0

    .line 355
    .local v0, "screenPointOfView":Landroid/graphics/Point;
    iget-boolean v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mUseViewPositionCache:Z

    if-eqz v1, :cond_0

    .line 356
    iget-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mViewPositionCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "screenPointOfView":Landroid/graphics/Point;
    check-cast v0, Landroid/graphics/Point;

    .line 359
    :cond_0
    if-nez v0, :cond_1

    .line 360
    invoke-static {p1}, Lcom/samsung/android/content/smartclip/SmartClipUtils;->getViewLocationOnScreen(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    .line 362
    .local v0, "screenPointOfView":Landroid/graphics/Point;
    iget-boolean v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mUseViewPositionCache:Z

    if-eqz v1, :cond_1

    .line 363
    iget-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mViewPositionCache:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    .end local v0    # "screenPointOfView":Landroid/graphics/Point;
    :cond_1
    return-object v0
.end method

.method private isSupportThirdPartyExtractionInterface(Landroid/view/View;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 940
    if-nez p1, :cond_0

    .line 941
    return v2

    .line 944
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->getThirPartyExtractionInterfaceMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 945
    return v1

    .line 947
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 948
    .local v0, "tagObject":Ljava/lang/Object;
    if-eqz v0, :cond_3

    .line 949
    invoke-direct {p0, v0}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->getThirPartyExtractionInterfaceMethod(Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v3, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0

    .line 952
    :cond_3
    return v2
.end method

.method private isThirdPartyExtractionInterfaceEnabledOnManifest(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 919
    const/4 v3, 0x0

    .line 921
    .local v3, "isFeatureEnabled":Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, p2, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 922
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    .line 923
    const-string/jumbo v4, "SmartClipDataCropperImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isSupportThirdPartyExtractionInterface : Could not get appInfo! - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    const/4 v4, 0x0

    return v4

    .line 927
    :cond_0
    iget-object v1, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 928
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 929
    const-string/jumbo v4, "com.samsung.android.smartclip.support_custom_smartclip_metaextraction"

    invoke-virtual {v1, v4, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 930
    .local v3, "isFeatureEnabled":Z
    if-eqz v3, :cond_1

    .line 931
    const-string/jumbo v4, "SmartClipDataCropperImpl"

    const-string/jumbo v5, "isSupportThirdPartyExtractionInterface : Feature enabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 936
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "isFeatureEnabled":Z
    :cond_1
    :goto_0
    return v3

    .line 934
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private removeSmartClipDataElementByRect(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;Landroid/graphics/Rect;)Z
    .locals 8
    .param p1, "element"    # Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    .param p2, "rectToDelete"    # Landroid/graphics/Rect;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 753
    invoke-virtual {p1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getLastChild()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    .line 754
    .local v0, "child":Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    :goto_0
    if-eqz v0, :cond_0

    .line 755
    move-object v1, v0

    .line 756
    .local v1, "cur":Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    invoke-virtual {v0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getPrevSibling()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v0

    .line 758
    invoke-direct {p0, v1, p2}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->removeSmartClipDataElementByRect(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 761
    .end local v1    # "cur":Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getFirstChild()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v3

    if-nez v3, :cond_2

    .line 762
    invoke-virtual {p1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getMetaAreaRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 763
    .local v2, "metaAreaRect":Landroid/graphics/Rect;
    invoke-virtual {p1, v6}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->isEmptyTag(Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 765
    invoke-virtual {p1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getParent()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->removeChild(Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)Z

    .line 766
    return v7

    .line 767
    :cond_1
    if-eqz v2, :cond_2

    invoke-static {p2, v2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 768
    const-string/jumbo v3, "SmartClipDataCropperImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeSmartClipDataElementByRect : Removing element due to RECT intersection. element = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v6, v7}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getDumpString(ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    invoke-virtual {p1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getParent()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->removeChild(Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)Z

    .line 770
    return v7

    .line 773
    .end local v2    # "metaAreaRect":Landroid/graphics/Rect;
    :cond_2
    return v6
.end method

.method private traverseView(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)Z
    .locals 28
    .param p1, "view"    # Landroid/view/View;
    .param p2, "croppedArea"    # Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;
    .param p3, "smartClipDataRepository"    # Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
    .param p4, "parentDataElement"    # Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    .prologue
    .line 1007
    const/4 v15, 0x0

    .line 1009
    .local v15, "haveCroppedView":Z
    if-eqz p1, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getVisibility()I

    move-result v24

    if-nez v24, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v24

    if-lez v24, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v24

    if-lez v24, :cond_f

    .line 1010
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->getViewBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v21

    .line 1014
    .local v21, "screenRectOfView":Landroid/graphics/Rect;
    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;->getRect()Landroid/graphics/Rect;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v24

    if-eqz v24, :cond_f

    .line 1016
    new-instance v12, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v12, v0, v1, v2}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;-><init>(Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1017
    .local v12, "element":Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->semGetSmartClipTags()Lcom/samsung/android/content/smartclip/SemSmartClipMetaTagArray;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    .line 1018
    .local v11, "defaultViewTags":Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;
    if-eqz v11, :cond_0

    .line 1019
    invoke-virtual {v11}, Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;->getCopy()Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setTagTable(Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;)V

    .line 1023
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->semGetSmartClipDataExtractionListener()Lcom/samsung/android/content/smartclip/SemSmartClipDataExtractionListener;

    move-result-object v18

    .line 1024
    .local v18, "listener":Lcom/samsung/android/content/smartclip/SemSmartClipDataExtractionListener;
    const/4 v14, 0x0

    .line 1026
    .local v14, "extractionResult":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mSupportThirdPartyExtractionInterface:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->isSupportThirdPartyExtractionInterface(Landroid/view/View;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 1027
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v12}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->extractDefaultSmartClipData_ThirdPartyInterface(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)I

    move-result v14

    .line 1036
    :goto_0
    move-object v13, v12

    .line 1037
    .local v13, "elementTraveler":Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    :goto_1
    if-eqz v13, :cond_3

    .line 1038
    invoke-virtual {v13}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getMetaAreaRect()Landroid/graphics/Rect;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->adjustMetaAreaRect(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 1039
    .local v3, "adjustedMetaAreaRect":Landroid/graphics/Rect;
    invoke-virtual {v13, v3}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setMetaAreaRect(Landroid/graphics/Rect;)V

    .line 1041
    invoke-virtual {v13, v12}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v13

    goto :goto_1

    .line 1028
    .end local v3    # "adjustedMetaAreaRect":Landroid/graphics/Rect;
    .end local v13    # "elementTraveler":Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    :cond_1
    if-eqz v18, :cond_2

    .line 1029
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2, v12}, Lcom/samsung/android/content/smartclip/SemSmartClipDataExtractionListener;->onExtractSmartClipData(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)I

    move-result v14

    goto :goto_0

    .line 1032
    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v12}, Landroid/view/View;->semExtractSmartClipData(Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)I

    move-result v14

    goto :goto_0

    .line 1044
    .restart local v13    # "elementTraveler":Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->getMainResultFromExtractionResult(I)I

    move-result v19

    .line 1045
    .local v19, "mainResult":I
    packed-switch v19, :pswitch_data_0

    .line 1060
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v23

    .line 1061
    .local v23, "viewString":Ljava/lang/String;
    const-string/jumbo v24, "SmartClipDataCropperImpl"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Unknown main extraction result value : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, " / View = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    invoke-virtual {v12}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->clearMetaData()V

    .line 1068
    .end local v23    # "viewString":Ljava/lang/String;
    :goto_2
    :pswitch_0
    and-int/lit16 v0, v14, 0x100

    move/from16 v24, v0

    if-eqz v24, :cond_5

    const/16 v22, 0x1

    .line 1069
    .local v22, "skipExtractionFromChildView":Z
    :goto_3
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v24, v0

    if-eqz v24, :cond_6

    if-nez v22, :cond_6

    move-object/from16 v24, p1

    .line 1070
    check-cast v24, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->getChildViewsByZOrder(Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v8

    .line 1071
    .local v8, "childViewArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1073
    .local v6, "childCount":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_4
    move/from16 v0, v16

    if-ge v0, v6, :cond_6

    .line 1074
    move/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1076
    .local v5, "child":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v5, v1, v2, v12}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->traverseView(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)Z

    move-result v4

    .line 1078
    .local v4, "bFound":Z
    if-eqz v4, :cond_4

    .line 1079
    const/4 v15, 0x1

    .line 1073
    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 1051
    .end local v4    # "bFound":Z
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v8    # "childViewArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v16    # "i":I
    .end local v22    # "skipExtractionFromChildView":Z
    :pswitch_1
    invoke-virtual {v12}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->clearMetaData()V

    goto :goto_2

    .line 1055
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPendingElements:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1056
    const/4 v15, 0x1

    .line 1057
    goto :goto_2

    .line 1068
    :cond_5
    const/16 v22, 0x0

    .restart local v22    # "skipExtractionFromChildView":Z
    goto :goto_3

    .line 1085
    :cond_6
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->isEmptyTag(Z)Z

    move-result v24

    if-nez v24, :cond_7

    .line 1086
    const/4 v15, 0x1

    .line 1090
    :cond_7
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v12, v0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->isEmptyTag(Z)Z

    move-result v24

    if-nez v24, :cond_8

    .line 1091
    sget-boolean v24, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->DEBUG:Z

    if-eqz v24, :cond_c

    .line 1092
    const-string/jumbo v24, "SmartClipDataCropperImpl"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "traverseView : Contains meta data : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v12, v0, v1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getDumpString(ZZ)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    :cond_8
    :goto_5
    if-eqz v15, :cond_f

    .line 1100
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/FrameLayout;

    move/from16 v24, v0

    if-nez v24, :cond_9

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/RelativeLayout;

    move/from16 v24, v0

    if-eqz v24, :cond_e

    .line 1102
    :cond_9
    invoke-virtual {v12}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getLastChild()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v7

    .line 1103
    .local v7, "childElement":Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    const/16 v20, 0x0

    .line 1108
    :cond_a
    :goto_6
    if-eqz v7, :cond_e

    .line 1109
    const/16 v17, 0x0

    .line 1110
    .local v17, "isCurElementRemoved":Z
    move-object v9, v7

    .line 1111
    .local v9, "curElement":Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    invoke-virtual {v7}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getPrevSibling()Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v7

    .line 1114
    if-eqz v20, :cond_b

    .line 1115
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v9, v1}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->removeSmartClipDataElementByRect(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;Landroid/graphics/Rect;)Z

    move-result v17

    .line 1119
    .end local v17    # "isCurElementRemoved":Z
    :cond_b
    if-nez v17, :cond_a

    .line 1120
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->getOpaqueBackgroundRect(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)Landroid/graphics/Rect;

    move-result-object v10

    .line 1121
    .local v10, "curOpaqueRect":Landroid/graphics/Rect;
    if-eqz v10, :cond_a

    .line 1122
    if-nez v20, :cond_d

    .line 1123
    move-object/from16 v20, v10

    .local v20, "opaqueRect":Landroid/graphics/Rect;
    goto :goto_6

    .line 1094
    .end local v7    # "childElement":Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    .end local v9    # "curElement":Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    .end local v10    # "curOpaqueRect":Landroid/graphics/Rect;
    .end local v20    # "opaqueRect":Landroid/graphics/Rect;
    :cond_c
    const-string/jumbo v24, "SmartClipDataCropperImpl"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "traverseView : Contains meta data : "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v12, v0, v1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getDumpString(ZZ)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1125
    .restart local v7    # "childElement":Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    .restart local v9    # "curElement":Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    .restart local v10    # "curOpaqueRect":Landroid/graphics/Rect;
    :cond_d
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_6

    .line 1135
    .end local v7    # "childElement":Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    .end local v9    # "curElement":Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    .end local v10    # "curOpaqueRect":Landroid/graphics/Rect;
    :cond_e
    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->addChild(Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)Z

    .line 1140
    .end local v11    # "defaultViewTags":Lcom/samsung/android/content/smartclip/SmartClipMetaTagArrayImpl;
    .end local v12    # "element":Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    .end local v13    # "elementTraveler":Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    .end local v14    # "extractionResult":I
    .end local v18    # "listener":Lcom/samsung/android/content/smartclip/SemSmartClipDataExtractionListener;
    .end local v19    # "mainResult":I
    .end local v21    # "screenRectOfView":Landroid/graphics/Rect;
    .end local v22    # "skipExtractionFromChildView":Z
    :cond_f
    return v15

    .line 1045
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private traverseViewForDragAndDrop(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)Z
    .locals 22
    .param p1, "view"    # Landroid/view/View;
    .param p2, "croppedArea"    # Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;
    .param p3, "smartClipDataRepository"    # Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
    .param p4, "parentDataElement"    # Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    .prologue
    .line 1144
    const/4 v11, 0x0

    .line 1146
    .local v11, "haveCroppedView":Z
    if-eqz p1, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getVisibility()I

    move-result v19

    if-nez v19, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v19

    if-lez v19, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v19

    if-lez v19, :cond_5

    .line 1147
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->getViewBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v16

    .line 1149
    .local v16, "screenRectOfView":Landroid/graphics/Rect;
    invoke-interface/range {p2 .. p2}, Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;->getRect()Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 1152
    new-instance v8, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-object/from16 v0, p3

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-direct {v8, v0, v1, v2}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;-><init>(Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1155
    .local v8, "element":Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    const/4 v10, 0x0

    .line 1156
    .local v10, "extractionResult":I
    const/4 v15, 0x0

    .line 1157
    .local v15, "needToCallListener":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->semGetSmartClipDataExtractionListener()Lcom/samsung/android/content/smartclip/SemSmartClipDataExtractionListener;

    move-result-object v13

    .line 1159
    .local v13, "listener":Lcom/samsung/android/content/smartclip/SemSmartClipDataExtractionListener;
    if-eqz v13, :cond_0

    .line 1160
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/SurfaceView;

    move/from16 v19, v0

    if-eqz v19, :cond_0

    .line 1161
    const/4 v15, 0x1

    .line 1165
    :cond_0
    if-eqz v15, :cond_1

    .line 1166
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v13, v0, v1, v8}, Lcom/samsung/android/content/smartclip/SemSmartClipDataExtractionListener;->onExtractSmartClipData(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)I

    move-result v10

    .line 1173
    :goto_0
    move-object v9, v8

    .line 1174
    .local v9, "elementTraveler":Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    :goto_1
    if-eqz v9, :cond_2

    .line 1175
    invoke-virtual {v9}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getMetaAreaRect()Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->adjustMetaAreaRect(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 1176
    .local v3, "adjustedMetaAreaRect":Landroid/graphics/Rect;
    invoke-virtual {v9, v3}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setMetaAreaRect(Landroid/graphics/Rect;)V

    .line 1178
    invoke-virtual {v9, v8}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->traverseNextElement(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    move-result-object v9

    goto :goto_1

    .line 1169
    .end local v3    # "adjustedMetaAreaRect":Landroid/graphics/Rect;
    .end local v9    # "elementTraveler":Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v8}, Landroid/view/View;->semExtractSmartClipData(Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)I

    move-result v10

    goto :goto_0

    .line 1181
    .restart local v9    # "elementTraveler":Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->getMainResultFromExtractionResult(I)I

    move-result v14

    .line 1182
    .local v14, "mainResult":I
    packed-switch v14, :pswitch_data_0

    .line 1197
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v18

    .line 1198
    .local v18, "viewString":Ljava/lang/String;
    const-string/jumbo v19, "SmartClipDataCropperImpl"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Unknown main extraction result value : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, " / View = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    invoke-virtual {v8}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->clearMetaData()V

    .line 1205
    .end local v18    # "viewString":Ljava/lang/String;
    :goto_2
    :pswitch_0
    and-int/lit16 v0, v10, 0x100

    move/from16 v19, v0

    if-eqz v19, :cond_6

    const/16 v17, 0x1

    .line 1206
    .local v17, "skipExtractionFromChildView":Z
    :goto_3
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v19, v0

    if-eqz v19, :cond_3

    if-nez v17, :cond_3

    .line 1207
    check-cast p1, Landroid/view/ViewGroup;

    .end local p1    # "view":Landroid/view/View;
    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->getChildViewsByZOrder(Landroid/view/ViewGroup;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1208
    .local v7, "childViewArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1210
    .local v6, "childCount":I
    add-int/lit8 v12, v6, -0x1

    .local v12, "i":I
    :goto_4
    if-ltz v12, :cond_3

    .line 1211
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1213
    .local v5, "child":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v5, v1, v2, v8}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->traverseViewForDragAndDrop(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)Z

    move-result v4

    .line 1215
    .local v4, "bFound":Z
    if-eqz v4, :cond_7

    .line 1216
    const/4 v11, 0x1

    .line 1223
    .end local v4    # "bFound":Z
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "childCount":I
    .end local v7    # "childViewArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v12    # "i":I
    :cond_3
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->isEmptyTag(Z)Z

    move-result v19

    if-nez v19, :cond_4

    .line 1224
    const/4 v11, 0x1

    .line 1227
    :cond_4
    if-eqz v11, :cond_5

    .line 1228
    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->addChild(Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)Z

    .line 1233
    .end local v8    # "element":Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    .end local v9    # "elementTraveler":Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    .end local v10    # "extractionResult":I
    .end local v13    # "listener":Lcom/samsung/android/content/smartclip/SemSmartClipDataExtractionListener;
    .end local v14    # "mainResult":I
    .end local v15    # "needToCallListener":Z
    .end local v16    # "screenRectOfView":Landroid/graphics/Rect;
    .end local v17    # "skipExtractionFromChildView":Z
    :cond_5
    return v11

    .line 1188
    .restart local v8    # "element":Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    .restart local v9    # "elementTraveler":Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    .restart local v10    # "extractionResult":I
    .restart local v13    # "listener":Lcom/samsung/android/content/smartclip/SemSmartClipDataExtractionListener;
    .restart local v14    # "mainResult":I
    .restart local v15    # "needToCallListener":Z
    .restart local v16    # "screenRectOfView":Landroid/graphics/Rect;
    .restart local p1    # "view":Landroid/view/View;
    :pswitch_1
    invoke-virtual {v8}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->clearMetaData()V

    goto :goto_2

    .line 1192
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPendingElements:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1193
    const/4 v11, 0x1

    .line 1194
    goto :goto_2

    .line 1205
    :cond_6
    const/16 v17, 0x0

    .restart local v17    # "skipExtractionFromChildView":Z
    goto :goto_3

    .line 1210
    .end local p1    # "view":Landroid/view/View;
    .restart local v4    # "bFound":Z
    .restart local v5    # "child":Landroid/view/View;
    .restart local v6    # "childCount":I
    .restart local v7    # "childViewArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v12    # "i":I
    :cond_7
    add-int/lit8 v12, v12, -0x1

    goto :goto_4

    .line 1182
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private updateDataElementWithBundle(Landroid/view/View;Landroid/os/Bundle;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)Z
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .param p3, "resultElement"    # Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    .prologue
    .line 969
    const/4 v2, 0x0

    .line 971
    .local v2, "isElementUpdated":Z
    const-string/jumbo v6, "title"

    invoke-virtual {p2, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 972
    .local v4, "title":Ljava/lang/String;
    const-string/jumbo v6, "url"

    invoke-virtual {p2, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 973
    .local v5, "url":Ljava/lang/String;
    const-string/jumbo v6, "app_link"

    invoke-virtual {p2, v6}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 974
    .local v0, "appLink":Ljava/lang/String;
    const-string/jumbo v6, "rect"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 976
    .local v1, "area":Landroid/graphics/Rect;
    sget-boolean v6, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->DEBUG:Z

    if-eqz v6, :cond_0

    .line 977
    const-string/jumbo v6, "SmartClipDataCropperImpl"

    const-string/jumbo v7, "fillDataElementWithBundle : Title:%s\nLink:%s\nURL:%s\nArea:%s"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v9, 0x1

    aput-object v0, v8, v9

    const/4 v9, 0x2

    aput-object v5, v8, v9

    const/4 v9, 0x3

    aput-object v1, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 981
    new-instance v6, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    const-string/jumbo v7, "title"

    invoke-direct {v6, v7, v4}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v6}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z

    .line 982
    const/4 v2, 0x1

    .line 985
    :cond_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 986
    new-instance v6, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    const-string/jumbo v7, "url"

    invoke-direct {v6, v7, v5}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v6}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z

    .line 987
    const/4 v2, 0x1

    .line 990
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 991
    new-instance v6, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;

    const-string/jumbo v7, "app_deep_link"

    invoke-direct {v6, v7, v0}, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v6}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z

    .line 992
    const/4 v2, 0x1

    .line 995
    :cond_3
    if-eqz v1, :cond_4

    .line 996
    invoke-direct {p0, p1}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->getViewBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    .line 997
    .local v3, "screenRectOfView":Landroid/graphics/Rect;
    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 998
    invoke-virtual {p3, v1}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->setMetaAreaRect(Landroid/graphics/Rect;)V

    .line 999
    const/4 v2, 0x1

    .line 1002
    .end local v3    # "screenRectOfView":Landroid/graphics/Rect;
    :cond_4
    return v2
.end method

.method private writeStringToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "filePathName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 844
    const/4 v4, 0x1

    .line 845
    .local v4, "ret":Z
    const-string/jumbo v5, "SmartClipDataCropperImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "writeStringToFile : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 848
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 850
    .local v2, "os":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 851
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .local v3, "os":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 856
    if-eqz v3, :cond_0

    .line 858
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v2, v3

    .line 866
    .end local v3    # "os":Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    invoke-virtual {v1, v9, v8}, Ljava/io/File;->setReadable(ZZ)Z

    .line 867
    invoke-virtual {v1, v9, v8}, Ljava/io/File;->setWritable(ZZ)Z

    .line 869
    return v4

    .line 859
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v0

    .line 860
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "SmartClipDataCropperImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "writeStringToFile : File close failed! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    const/4 v4, 0x0

    goto :goto_0

    .line 852
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 853
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string/jumbo v5, "SmartClipDataCropperImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "writeStringToFile : File write failed! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 854
    const/4 v4, 0x0

    .line 856
    if-eqz v2, :cond_1

    .line 858
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 859
    :catch_2
    move-exception v0

    .line 860
    const-string/jumbo v5, "SmartClipDataCropperImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "writeStringToFile : File close failed! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    const/4 v4, 0x0

    goto :goto_1

    .line 855
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 856
    :goto_3
    if-eqz v2, :cond_2

    .line 858
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 855
    :cond_2
    :goto_4
    throw v5

    .line 859
    :catch_3
    move-exception v0

    .line 860
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "SmartClipDataCropperImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "writeStringToFile : File close failed! "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    const/4 v4, 0x0

    goto :goto_4

    .line 855
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "os":Ljava/io/FileOutputStream;
    .local v2, "os":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 852
    .end local v2    # "os":Ljava/io/FileOutputStream;
    .restart local v3    # "os":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    move-object v2, v3

    .end local v3    # "os":Ljava/io/FileOutputStream;
    .restart local v2    # "os":Ljava/io/FileOutputStream;
    goto :goto_2
.end method


# virtual methods
.method protected addAppMetaTag(Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)V
    .locals 4
    .param p1, "element"    # Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;

    .prologue
    .line 189
    iget-object v1, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 190
    const-string/jumbo v1, "SmartClipDataCropperImpl"

    const-string/jumbo v2, "addAppMetaTag : mContext is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    return-void

    .line 194
    :cond_0
    const-string/jumbo v1, "SmartClipDataCropperImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addAppMetaTag : package name is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v0, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;

    const-string/jumbo v1, "app_launch_info"

    iget-object v2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .local v0, "intentTag":Lcom/samsung/android/content/smartclip/SemSmartClipExtendedMetaTag;
    invoke-interface {p1, v0}, Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;->addTag(Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;)Z

    .line 188
    return-void
.end method

.method public doExtractSmartClipData(Landroid/view/View;)Z
    .locals 10
    .param p1, "rootView"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 143
    iget-object v4, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    if-nez v4, :cond_0

    .line 144
    const-string/jumbo v4, "SmartClipDataCropperImpl"

    const-string/jumbo v5, "doExtractSmartClipData : extractionRequest is null!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return v8

    .line 148
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionStartTime:J

    .line 150
    new-instance v1, Lcom/samsung/android/content/smartclip/SmartClipCroppedAreaImpl;

    iget-object v4, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    iget-object v4, v4, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mCropRect:Landroid/graphics/Rect;

    invoke-direct {v1, v4}, Lcom/samsung/android/content/smartclip/SmartClipCroppedAreaImpl;-><init>(Landroid/graphics/Rect;)V

    .line 152
    .local v1, "croppedArea":Lcom/samsung/android/content/smartclip/SmartClipCroppedAreaImpl;
    invoke-virtual {v1}, Lcom/samsung/android/content/smartclip/SmartClipCroppedAreaImpl;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 153
    .local v0, "cropRect":Landroid/graphics/Rect;
    if-nez v0, :cond_3

    const-string/jumbo v2, "null"

    .line 154
    .local v2, "rectAreaStr":Ljava/lang/String;
    :goto_0
    const-string/jumbo v4, "SmartClipDataCropperImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "doExtractSmartClipData : Extraction start! reqId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    iget v6, v6, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mRequestId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  Cropped area = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  Package = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iput-boolean v9, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mIsExtractingData:Z

    .line 158
    new-instance v4, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    iget-object v5, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mWinFrameRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mScaleRect:Landroid/graphics/RectF;

    iget v7, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPenWindowBorderWidth:I

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;-><init>(Lcom/samsung/android/content/smartclip/SemSmartClipDataCropper;Landroid/graphics/Rect;Landroid/graphics/RectF;I)V

    iput-object v4, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    .line 159
    iget-object v4, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    invoke-virtual {v4}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getRootElement()Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    .line 161
    .local v3, "rootElement":Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    iget-object v4, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mViewPositionCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 162
    iget-object v4, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    iget v4, v4, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    .line 163
    iget-object v4, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    iget v4, v4, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 164
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    invoke-direct {p0, p1, v1, v4, v3}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->traverseViewForDragAndDrop(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)Z

    .line 168
    :goto_1
    iget-object v4, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mViewPositionCache:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 173
    invoke-virtual {p0, v3}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->addAppMetaTag(Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)V

    .line 176
    iget-object v4, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    iget-object v5, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->setAppPackageName(Ljava/lang/String;)V

    .line 178
    iput-boolean v8, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mIsExtractingData:Z

    .line 180
    iget-object v4, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPendingElements:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 181
    iget-object v4, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    invoke-virtual {v4}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->determineContentType()Z

    .line 182
    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->sendExtractionResultToSmartClipService()Z

    .line 185
    :cond_2
    return v9

    .line 153
    .end local v2    # "rectAreaStr":Ljava/lang/String;
    .end local v3    # "rootElement":Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "rectAreaStr":Ljava/lang/String;
    goto/16 :goto_0

    .line 166
    .restart local v3    # "rootElement":Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    invoke-direct {p0, p1, v1, v4, v3}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->traverseView(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)Z

    goto :goto_1
.end method

.method public extractDefaultSmartClipData(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)I
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "croppedArea"    # Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;
    .param p3, "resultElement"    # Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 371
    if-nez p3, :cond_0

    .line 372
    const-string/jumbo v2, "SmartClipDataCropperImpl"

    const-string/jumbo v3, "extractDefaultSmartClipData : The result element is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return v4

    .line 376
    :cond_0
    if-nez p2, :cond_1

    .line 377
    const-string/jumbo v2, "SmartClipDataCropperImpl"

    const-string/jumbo v3, "extractDefaultSmartClipData : The cropped area is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    return v4

    .line 382
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, "viewClassName":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPackageName:Ljava/lang/String;

    const-string/jumbo v3, "com.google.android.youtube"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "PlayerView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 384
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->extractDefaultSmartClipData_YoutubePlayerView(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)I

    move-result v2

    return v2

    .line 386
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mChromeBrowserContentViewName:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mChromeBrowserContentViewName:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/samsung/android/content/smartclip/SmartClipUtils;->isInstanceOf(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 387
    const-string/jumbo v2, "SmartClipDataCropperImpl"

    const-string/jumbo v3, "extractDefaultSmartClipData : Has chrome view"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->extractDefaultSmartClipData_GoogleChromeView(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)I

    move-result v2

    return v2

    .line 390
    :cond_3
    const-string/jumbo v2, "org.chromium.content.browser.JellyBeanContentView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 391
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->extractDefaultSmartClipData_GoogleChromeView(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)I

    move-result v2

    return v2

    .line 393
    :cond_4
    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_5

    .line 394
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->extractDefaultSmartClipData_TextView(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)I

    move-result v2

    return v2

    .line 396
    :cond_5
    instance-of v2, p1, Landroid/widget/ImageView;

    if-eqz v2, :cond_6

    .line 397
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->extractDefaultSmartClipData_ImageView(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)I

    move-result v2

    return v2

    .line 402
    :cond_6
    instance-of v2, p1, Landroid/view/TextureView;

    if-eqz v2, :cond_7

    .line 403
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->extractDefaultSmartClipData_TextureView(Landroid/view/View;Lcom/samsung/android/content/smartclip/SemSmartClipCroppedArea;Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)I
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 405
    .end local v1    # "viewClassName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Ljava/lang/ClassCastException;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 407
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ClassCastException in traverseView : target class is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 406
    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 409
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 412
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_7
    return v5
.end method

.method protected findElementIndexFromPendingList(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)I
    .locals 3
    .param p1, "element"    # Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    .prologue
    .line 250
    iget-object v2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPendingElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 251
    .local v1, "pendingCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 252
    iget-object v2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPendingElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 253
    return v0

    .line 251
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method public getExtractionLevel()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionLevel:I

    return v0
.end method

.method public getExtractionMode()I
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    iget v0, v0, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    return v0

    .line 277
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getParentList(Landroid/view/View;)Ljava/util/ArrayList;
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 229
    .local v1, "parents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 231
    .local v0, "cur":Landroid/view/ViewParent;
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 232
    nop

    nop

    .line 238
    .local v0, "cur":Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_2

    .line 239
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 241
    nop

    nop

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 234
    .local v0, "cur":Landroid/view/ViewParent;
    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .local v0, "cur":Landroid/view/ViewParent;
    goto :goto_0

    .line 246
    :cond_2
    return-object v1
.end method

.method public getSmartClipDataRepository()Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    return-object v0
.end method

.method protected sendExtractionResultToSmartClipService()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 260
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPendingElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 261
    const-string/jumbo v0, "SmartClipDataCropperImpl"

    const-string/jumbo v1, "Cannot send the extraction result due to it still have pending element!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return v2

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    if-eqz v0, :cond_1

    .line 266
    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    invoke-virtual {p0, v0}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->sendExtractionResultToSmartClipService(Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;)Z

    move-result v0

    return v0

    .line 268
    :cond_1
    const-string/jumbo v0, "SmartClipDataCropperImpl"

    const-string/jumbo v1, "Cannot send the extraction result due to it is NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    return v2
.end method

.method public sendExtractionResultToSmartClipService(Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;)Z
    .locals 13
    .param p1, "result"    # Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    .prologue
    const/4 v12, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 286
    iget-object v5, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    if-nez v5, :cond_0

    .line 287
    const-string/jumbo v5, "SmartClipDataCropperImpl"

    const-string/jumbo v6, "sendExtractionResultToSmartClipService : extractionRequest is null!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return v7

    .line 292
    :cond_0
    if-eqz p1, :cond_1

    iget-object v5, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    iget v5, v5, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    if-nez v5, :cond_1

    .line 293
    invoke-virtual {p1}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->getRootElement()Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    invoke-direct {p0, v5}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->filterMetaTagForBrowserViews(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)V

    .line 297
    :cond_1
    if-eqz p1, :cond_3

    .line 298
    const-string/jumbo v5, "SmartClipDataCropperImpl"

    const-string/jumbo v6, "sendExtractionResultToSmartClipService : -- Extracted SmartClip data information --"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-string/jumbo v5, "SmartClipDataCropperImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendExtractionResultToSmartClipService : Request Id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    iget v7, v7, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mRequestId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    const-string/jumbo v5, "SmartClipDataCropperImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendExtractionResultToSmartClipService : Extraction mode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    iget v7, v7, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    sget-boolean v5, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->DEBUG:Z

    invoke-virtual {p1, v5}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->dump(Z)Z

    .line 308
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "spengestureservice"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/content/smartclip/SpenGestureManager;

    .line 309
    .local v4, "spenGestureManager":Lcom/samsung/android/content/smartclip/SpenGestureManager;
    new-instance v2, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionResponse;

    iget-object v5, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    iget v5, v5, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mRequestId:I

    iget-object v6, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    iget v6, v6, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mExtractionMode:I

    invoke-direct {v2, v5, v6, p1}, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionResponse;-><init>(IILcom/samsung/android/content/smartclip/SemSmartClipDataRepository;)V

    .line 312
    .local v2, "response":Lcom/samsung/android/content/smartclip/SmartClipDataExtractionResponse;
    if-eqz p1, :cond_2

    iget-object v5, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    iget v5, v5, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mTargetWindowLayer:I

    if-ltz v5, :cond_2

    .line 313
    iget-object v5, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    iget v5, v5, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mTargetWindowLayer:I

    invoke-virtual {p1, v5}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->setWindowLayer(I)V

    .line 317
    :cond_2
    :try_start_0
    new-instance v3, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;

    .line 318
    iget-object v5, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    iget v5, v5, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mRequestId:I

    .line 319
    const/4 v6, 0x1

    .line 317
    invoke-direct {v3, v5, v6, v2}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;-><init>(IILandroid/os/Parcelable;)V

    .line 322
    .local v3, "resultData":Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;
    invoke-virtual {v4, v3}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->sendSmartClipRemoteRequestResult(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    .end local v3    # "resultData":Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;
    :goto_1
    const-string/jumbo v5, "SmartClipDataCropperImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendExtractionResultToSmartClipService : Elapsed = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionStartTime:J

    sub-long/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return v12

    .line 304
    .end local v2    # "response":Lcom/samsung/android/content/smartclip/SmartClipDataExtractionResponse;
    .end local v4    # "spenGestureManager":Lcom/samsung/android/content/smartclip/SpenGestureManager;
    :cond_3
    const-string/jumbo v5, "SmartClipDataCropperImpl"

    const-string/jumbo v6, "sendExtractionResultToSmartClipService : The repository is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 323
    .restart local v2    # "response":Lcom/samsung/android/content/smartclip/SmartClipDataExtractionResponse;
    .restart local v4    # "spenGestureManager":Lcom/samsung/android/content/smartclip/SpenGestureManager;
    :catch_0
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v5, "SmartClipDataCropperImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendExtractionResultToSmartClipService : Failed to send the result! e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const-string/jumbo v5, "SmartClipDataCropperImpl"

    const-string/jumbo v6, "sendExtractionResultToSmartClipService : Send empty response..."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    new-instance v1, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;

    .line 328
    iget-object v5, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mExtractionRequest:Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;

    iget v5, v5, Lcom/samsung/android/content/smartclip/SmartClipDataExtractionEvent;->mRequestId:I

    .line 327
    invoke-direct {v1, v5, v12, v8}, Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;-><init>(IILandroid/os/Parcelable;)V

    .line 332
    .local v1, "emptyResultData":Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;
    invoke-virtual {v4, v1}, Lcom/samsung/android/content/smartclip/SpenGestureManager;->sendSmartClipRemoteRequestResult(Lcom/samsung/android/content/smartclip/SmartClipRemoteRequestResult;)V

    goto :goto_1
.end method

.method public setPendingExtractionResult(Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;)Z
    .locals 7
    .param p1, "resultElement"    # Lcom/samsung/android/content/smartclip/SemSmartClipDataElement;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    move-object v2, p1

    .line 202
    check-cast v2, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    invoke-virtual {p0, v2}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->findElementIndexFromPendingList(Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;)I

    move-result v1

    .line 203
    .local v1, "elementIndex":I
    if-ltz v1, :cond_3

    .line 204
    iget-object v2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPendingElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-object v0, p1

    .line 207
    check-cast v0, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;

    .line 208
    .local v0, "elementImpl":Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    invoke-virtual {v0, v5}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->isEmptyTag(Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 209
    sget-boolean v2, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 210
    const-string/jumbo v2, "SmartClipDataCropperImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPendingExtractionResult : Contains meta data : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getDumpString(ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mPendingElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mIsExtractingData:Z

    if-nez v2, :cond_1

    .line 217
    iget-object v2, p0, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->mSmartClipDataRepository:Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;

    invoke-virtual {v2}, Lcom/samsung/android/content/smartclip/SemSmartClipDataRepository;->determineContentType()Z

    .line 218
    invoke-virtual {p0}, Lcom/samsung/android/content/smartclip/SmartClipDataCropperImpl;->sendExtractionResultToSmartClipService()Z

    .line 220
    :cond_1
    return v6

    .line 212
    :cond_2
    const-string/jumbo v2, "SmartClipDataCropperImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setPendingExtractionResult : Contains meta data : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v5, v5}, Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;->getDumpString(ZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 222
    .end local v0    # "elementImpl":Lcom/samsung/android/content/smartclip/SmartClipDataElementImpl;
    :cond_3
    return v5
.end method
