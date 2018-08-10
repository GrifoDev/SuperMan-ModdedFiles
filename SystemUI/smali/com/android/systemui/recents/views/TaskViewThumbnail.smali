.class public Lcom/android/systemui/recents/views/TaskViewThumbnail;
.super Landroid/view/View;
.source "TaskViewThumbnail.java"


# static fields
.field private static final TMP_BRIGHTNESS_COLOR_MATRIX:Landroid/graphics/ColorMatrix;

.field private static final TMP_FILTER_COLOR_MATRIX:Landroid/graphics/ColorMatrix;


# instance fields
.field protected mBgFillPaint:Landroid/graphics/Paint;

.field protected mBitmapShader:Landroid/graphics/BitmapShader;

.field protected mCornerRadius:I

.field private mDarkStrokePaint:Landroid/graphics/Paint;

.field private mDimAlpha:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDisabledInSafeMode:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mDisplayOrientation:I

.field private mDisplayRect:Landroid/graphics/Rect;

.field private mDrawPaint:Landroid/graphics/Paint;

.field private mFullscreenThumbnailScale:F

.field private mInnerStrokePaint:Landroid/graphics/Paint;

.field private mInvisible:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mLightingColorFilter:Landroid/graphics/LightingColorFilter;

.field protected mLockedPaint:Landroid/graphics/Paint;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mOverlayHeaderOnThumbnailActionBar:Z

.field private mPairedTaskThumbnailBorderSize:I

.field private mSecuredPaint:Landroid/graphics/Paint;

.field private mSizeToFit:Z

.field protected mSolidPaint:Landroid/graphics/Paint;

.field private mTask:Lcom/android/systemui/recents/model/Task;

.field private mTaskBar:Landroid/view/View;

.field protected mTaskViewRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mThumbnailData:Lcom/android/systemui/recents/model/ThumbnailData;

.field protected mThumbnailRect:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field protected mThumbnailScale:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private mTitleBarHeight:I

.field protected mUserLocked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->TMP_FILTER_COLOR_MATRIX:Landroid/graphics/ColorMatrix;

    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->TMP_BRIGHTNESS_COLOR_MATRIX:Landroid/graphics/ColorMatrix;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7

    const v6, -0xcccccd

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisplayOrientation:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisplayRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    iput v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mFullscreenThumbnailScale:F

    iput-boolean v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mSizeToFit:Z

    iput-boolean v3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mOverlayHeaderOnThumbnailActionBar:Z

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mMatrix:Landroid/graphics/Matrix;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mSolidPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLockedPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    iput-boolean v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mUserLocked:Z

    new-instance v1, Landroid/graphics/LightingColorFilter;

    invoke-direct {v1, v4, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mSecuredPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePairedTask:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInnerStrokePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInnerStrokePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x4c000000    # 3.3554432E7f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInnerStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInnerStrokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInnerStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mPairedTaskThumbnailBorderSize:I

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mSecuredPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mSecuredPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDarkStrokePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDarkStrokePaint:Landroid/graphics/Paint;

    const v2, -0xdadadb

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDarkStrokePaint:Landroid/graphics/Paint;

    const v2, 0x7f0705b4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDarkStrokePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDarkStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLockedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLockedPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mSolidPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setColor(I)V

    const v1, 0x7f070567

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTitleBarHeight:I

    return-void

    :cond_1
    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07039d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0705af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    goto :goto_0
.end method


# virtual methods
.method public bindToTask(Lcom/android/systemui/recents/model/Task;ZILandroid/graphics/Rect;)V
    .locals 4

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    iput-boolean p2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisabledInSafeMode:Z

    iput p3, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisplayOrientation:I

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    sget-boolean v0, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePairedTask:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->isPairedTask:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601a0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    :goto_0
    iget v0, p1, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLockedPaint:Landroid/graphics/Paint;

    iget v1, p1, Lcom/android/systemui/recents/model/Task;->colorPrimary:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    iget-boolean v0, p1, Lcom/android/systemui/recents/model/Task;->isLocked:Z

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mUserLocked:Z

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    return-void

    :cond_2
    iget v0, p1, Lcom/android/systemui/recents/model/Task;->colorBackground:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    iget v1, p1, Lcom/android/systemui/recents/model/Task;->colorBackground:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "TaskViewThumbnail"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " mTaskViewRect="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " mThumbnailRect="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/Utilities;->dumpRect(Landroid/graphics/Rect;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, " mThumbnailScale="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v0, " mDimAlpha="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDimAlpha:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method protected getDrawPaint()Landroid/graphics/Paint;
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mUserLocked:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLockedPaint:Landroid/graphics/Paint;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public final onBusEvent(Lcom/android/systemui/recents/events/ui/TaskSnapshotChangedEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/systemui/recents/events/ui/TaskSnapshotChangedEvent;->taskId:I

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    if-eq v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/TaskSnapshotChangedEvent;->thumbnailData:Lcom/android/systemui/recents/model/ThumbnailData;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/TaskSnapshotChangedEvent;->thumbnailData:Lcom/android/systemui/recents/model/ThumbnailData;

    iget-object v0, v0, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/recents/events/ui/TaskSnapshotChangedEvent;->thumbnailData:Lcom/android/systemui/recents/model/ThumbnailData;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setThumbnail(Lcom/android/systemui/recents/model/ThumbnailData;)V

    return-void
.end method

.method public onConfigurationChanged(ILandroid/graphics/Rect;)V
    .locals 4

    sget-boolean v1, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePairedTask:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v1, v1, Lcom/android/systemui/recents/model/Task;->isPairedTask:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getPairedRecentTasksManager()Lcom/android/systemui/recents/model/PairedRecentTasksManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recents/model/PairedRecentTasksManager;->getPairedRecentTasksThumbnail(Lcom/android/systemui/recents/model/Task$TaskKey;Z)Lcom/android/systemui/recents/model/ThumbnailData;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    iput-object v0, v1, Lcom/android/systemui/recents/model/Task;->thumbnail:Lcom/android/systemui/recents/model/ThumbnailData;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setThumbnail(Lcom/android/systemui/recents/model/ThumbnailData;)V

    :cond_0
    iget v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisplayOrientation:I

    if-eq v1, p1, :cond_1

    iput p1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisplayOrientation:I

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailMatrix()V

    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move/from16 v0, v18

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    move/from16 v0, v17

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v2, v2, Lcom/android/systemui/recents/model/Task;->isPrivateMode:Z

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isPrivateModeEnabled()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v18

    int-to-float v5, v0

    move/from16 v0, v17

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v7, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v8, v2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mSecuredPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v2, v2, Lcom/android/systemui/recents/model/Task;->isKnoxTask:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailData:Lcom/android/systemui/recents/model/ThumbnailData;

    if-nez v2, :cond_4

    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v18

    int-to-float v5, v0

    move/from16 v0, v17

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v7, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v8, v2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mSolidPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isBBCContainer(I)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mUserLocked:Z

    if-eqz v2, :cond_6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v18

    int-to-float v5, v0

    move/from16 v0, v17

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v7, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v8, v2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLockedPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/android/internal/app/AppLockPolicy;->isSupportAppLock()Z

    move-result v2

    if-eqz v2, :cond_7

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isAppLockedPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v13, v2, v3}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isManagedProfileUserId(Landroid/content/Context;I)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_7

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getAppLockedTaskThumbnail(II)Landroid/graphics/Bitmap;

    move-result-object v10

    new-instance v11, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v11, v10, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v11}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v18

    int-to-float v5, v0

    move/from16 v0, v17

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v7, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v8, v2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v10, 0x0

    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v2, :cond_f

    if-lez v15, :cond_f

    if-lez v14, :cond_f

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskBar:Landroid/view/View;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mOverlayHeaderOnThumbnailActionBar:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    sub-int v16, v2, v3

    :cond_8
    move/from16 v0, v18

    if-ge v15, v0, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    sub-int v2, v15, v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v3, v2

    move/from16 v0, v16

    int-to-float v4, v0

    move/from16 v0, v18

    int-to-float v5, v0

    move/from16 v0, v17

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v7, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v8, v2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :cond_9
    move/from16 v0, v17

    if-ge v14, v0, :cond_a

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    sub-int v2, v14, v2

    move/from16 v0, v16

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v4, v2

    move/from16 v0, v18

    int-to-float v5, v0

    move/from16 v0, v17

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v7, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v8, v2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :cond_a
    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnablePairedTask:Z

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-boolean v2, v2, Lcom/android/systemui/recents/model/Task;->isPairedTask:Z

    if-eqz v2, :cond_d

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v18

    int-to-float v5, v0

    move/from16 v0, v17

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mPairedTaskThumbnailBorderSize:I

    int-to-float v7, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mPairedTaskThumbnailBorderSize:I

    int-to-float v8, v2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisplayOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int v3, v17, v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskBar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    neg-float v12, v2

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v12}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    sub-int/2addr v15, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    sub-int/2addr v14, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float v4, v2, v12

    int-to-float v5, v15

    int-to-float v2, v14

    sub-float v6, v2, v12

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisplayOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v3, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v4, v2

    int-to-float v5, v15

    int-to-float v6, v14

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInnerStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_d
    move/from16 v0, v17

    if-ge v14, v0, :cond_e

    const/4 v3, 0x0

    move/from16 v0, v16

    int-to-float v4, v0

    int-to-float v5, v15

    int-to-float v6, v14

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :goto_1
    sget-boolean v2, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableTabletLayout:Z

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isUPSModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v18

    int-to-float v5, v0

    move/from16 v0, v17

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v7, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v8, v2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDarkStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :cond_e
    const/4 v3, 0x0

    move/from16 v0, v16

    int-to-float v4, v0

    int-to-float v5, v15

    int-to-float v6, v14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v7, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v8, v2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_f
    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v18

    int-to-float v5, v0

    move/from16 v0, v17

    int-to-float v6, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v7, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mCornerRadius:I

    int-to-float v8, v2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useTabletLayout()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->onTaskViewSizeChanged(II)V

    :cond_1
    return-void
.end method

.method public onTaskDataLoaded(Lcom/android/systemui/recents/model/ThumbnailData;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setThumbnail(Lcom/android/systemui/recents/model/ThumbnailData;)V

    return-void
.end method

.method public onTaskViewSizeChanged(II)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useTabletLayout()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0, v1, v1, p1, p2}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setLeftTopRightBottom(IIII)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailMatrix()V

    return-void
.end method

.method public setDimAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDimAlpha:F

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailPaintFilter()V

    return-void
.end method

.method public setOverlayHeaderOnThumbnailActionBar(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mOverlayHeaderOnThumbnailActionBar:Z

    return-void
.end method

.method public setSizeToFit(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mSizeToFit:Z

    return-void
.end method

.method setThumbnail(Lcom/android/systemui/recents/model/ThumbnailData;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/RecentsDebugFlags;->useListLayout()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->prepareToDraw()V

    iget v1, p1, Lcom/android/systemui/recents/model/ThumbnailData;->scale:F

    iput v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mFullscreenThumbnailScale:F

    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v0, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p1, Lcom/android/systemui/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p1, Lcom/android/systemui/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v4, p1, Lcom/android/systemui/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget-object v4, p1, Lcom/android/systemui/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v5, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailData:Lcom/android/systemui/recents/model/ThumbnailData;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailMatrix()V

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailPaintFilter()V

    :goto_0
    return-void

    :cond_0
    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iput-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailData:Lcom/android/systemui/recents/model/ThumbnailData;

    goto :goto_0
.end method

.method public unbindFromTask()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->setThumbnail(Lcom/android/systemui/recents/model/ThumbnailData;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method updateClipToTaskBar(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskBar:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->invalidate()V

    return-void
.end method

.method public updateThumbnailMatrix()V
    .locals 11

    const/4 v9, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailData:Lcom/android/systemui/recents/model/ThumbnailData;

    if-eqz v7, :cond_1

    sget-boolean v7, Lcom/android/systemui/recents/RecentsDebugFlags$Static;->EnableCombinedTaskStack:Z

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    invoke-virtual {v7}, Lcom/android/systemui/recents/model/Task;->isFreeformTask()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTask:Lcom/android/systemui/recents/model/Task;

    iget-object v7, v7, Lcom/android/systemui/recents/model/Task;->bounds:Landroid/graphics/Rect;

    if-nez v7, :cond_4

    const/4 v1, 0x1

    :goto_0
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    iput v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mMatrix:Landroid/graphics/Matrix;

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailData:Lcom/android/systemui/recents/model/ThumbnailData;

    iget-object v8, v8, Lcom/android/systemui/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    neg-int v8, v8

    int-to-float v8, v8

    iget v9, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mFullscreenThumbnailScale:F

    mul-float/2addr v8, v9

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailData:Lcom/android/systemui/recents/model/ThumbnailData;

    iget-object v9, v9, Lcom/android/systemui/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    neg-int v9, v9

    int-to-float v9, v9

    iget v10, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mFullscreenThumbnailScale:F

    mul-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->setTranslate(FF)V

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mMatrix:Landroid/graphics/Matrix;

    iget v8, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    iget v9, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v8}, Landroid/graphics/BitmapShader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    :cond_1
    iget-boolean v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-nez v7, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->invalidate()V

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    iget-boolean v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mSizeToFit:Z

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    iget v9, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTitleBarHeight:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    div-float v4, v7, v8

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float v2, v7, v8

    cmpl-float v7, v4, v2

    if-lez v7, :cond_6

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    iput v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    goto :goto_1

    :cond_6
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    iget v8, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTitleBarHeight:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    iput v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    goto/16 :goto_1

    :cond_7
    if-eqz v1, :cond_c

    iget v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mFullscreenThumbnailScale:F

    div-float v0, v8, v7

    iget v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisplayOrientation:I

    if-ne v7, v9, :cond_9

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailData:Lcom/android/systemui/recents/model/ThumbnailData;

    iget v7, v7, Lcom/android/systemui/recents/model/ThumbnailData;->orientation:I

    if-ne v7, v9, :cond_8

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    iput v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    :goto_2
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    mul-float/2addr v7, v8

    float-to-int v3, v7

    if-le v5, v3, :cond_0

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    iput v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    goto/16 :goto_1

    :cond_8
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float/2addr v7, v0

    iput v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    goto :goto_2

    :cond_9
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailData:Lcom/android/systemui/recents/model/ThumbnailData;

    iget-object v7, v7, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailData:Lcom/android/systemui/recents/model/ThumbnailData;

    iget-object v8, v8, Lcom/android/systemui/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-ge v7, v8, :cond_a

    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    iput v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    goto :goto_2

    :cond_a
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    iput v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    goto :goto_2

    :cond_b
    iput v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    goto :goto_2

    :cond_c
    iget-object v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    iput v7, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mThumbnailScale:F

    goto/16 :goto_1
.end method

.method updateThumbnailPaintFilter()V
    .locals 10

    const/4 v9, 0x0

    const/16 v6, 0xff

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v7, 0x437f0000    # 255.0f

    iget-boolean v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-eqz v5, :cond_0

    return-void

    :cond_0
    iget v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDimAlpha:F

    sub-float v5, v8, v5

    mul-float/2addr v5, v7

    float-to-int v3, v5

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDisabledInSafeMode:Z

    if-eqz v5, :cond_2

    sget-object v5, Lcom/android/systemui/recents/views/TaskViewThumbnail;->TMP_FILTER_COLOR_MATRIX:Landroid/graphics/ColorMatrix;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    iget v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDimAlpha:F

    sub-float v4, v8, v5

    sget-object v5, Lcom/android/systemui/recents/views/TaskViewThumbnail;->TMP_BRIGHTNESS_COLOR_MATRIX:Landroid/graphics/ColorMatrix;

    invoke-virtual {v5}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v2

    const/4 v5, 0x0

    aput v4, v2, v5

    const/4 v5, 0x6

    aput v4, v2, v5

    const/16 v5, 0xc

    aput v4, v2, v5

    iget v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDimAlpha:F

    mul-float/2addr v5, v7

    const/4 v6, 0x4

    aput v5, v2, v6

    iget v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDimAlpha:F

    mul-float/2addr v5, v7

    const/16 v6, 0x9

    aput v5, v2, v6

    iget v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDimAlpha:F

    mul-float/2addr v5, v7

    const/16 v6, 0xe

    aput v5, v2, v6

    sget-object v5, Lcom/android/systemui/recents/views/TaskViewThumbnail;->TMP_FILTER_COLOR_MATRIX:Landroid/graphics/ColorMatrix;

    sget-object v6, Lcom/android/systemui/recents/views/TaskViewThumbnail;->TMP_BRIGHTNESS_COLOR_MATRIX:Landroid/graphics/ColorMatrix;

    invoke-virtual {v5, v6}, Landroid/graphics/ColorMatrix;->preConcat(Landroid/graphics/ColorMatrix;)V

    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    sget-object v5, Lcom/android/systemui/recents/views/TaskViewThumbnail;->TMP_FILTER_COLOR_MATRIX:Landroid/graphics/ColorMatrix;

    invoke-direct {v0, v5}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLockedPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :goto_0
    iget-boolean v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->invalidate()V

    :cond_1
    return-void

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-static {v6, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/LightingColorFilter;->setColorMultiply(I)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLockedPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mLightingColorFilter:Landroid/graphics/LightingColorFilter;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_0

    :cond_3
    move v1, v3

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v5, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mDrawPaint:Landroid/graphics/Paint;

    invoke-static {v6, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method updateThumbnailVisibility(I)V
    .locals 3

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSettingHelper()Lcom/android/systemui/recents/model/RecentsSettingHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/model/RecentsSettingHelper;->isDesktopMode()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskBar:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->getHeight()I

    move-result v1

    sub-int/2addr v1, p1

    iget-object v2, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mTaskBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    if-gt v1, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-eq v0, v1, :cond_0

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    iget-boolean v1, p0, Lcom/android/systemui/recents/views/TaskViewThumbnail;->mInvisible:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailPaintFilter()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
