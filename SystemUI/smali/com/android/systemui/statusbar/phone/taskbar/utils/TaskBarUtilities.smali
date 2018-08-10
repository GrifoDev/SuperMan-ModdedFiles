.class public final Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;
.super Ljava/lang/Object;
.source "TaskBarUtilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities$SaveBitmapTask;
    }
.end annotation


# static fields
.field private static final BIXBY_HOME_OOBE_URI:Landroid/net/Uri;

.field private static final VOICE_ENABLE_URI:Landroid/net/Uri;

.field private static debuggable:Z

.field private static debuggable_aero_feature:Z

.field private static debuggable_drag_hierarchy:Z

.field private static debuggable_drag_info:Z

.field private static debuggable_task_monitor:Z

.field private static mBgPaint:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private static final mHiddenPkgString:[Ljava/lang/String;

.field private static final multiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

.field private static sBlackPaint:Landroid/graphics/Paint;

.field private static final sCanvas:Landroid/graphics/Canvas;

.field static sColorIndex:I

.field static sColors:[I

.field private static sIconHeight:I

.field private static sIconWidth:I

.field private static final sOldBounds:Landroid/graphics/Rect;

.field private static final sTrimPattern:Ljava/util/regex/Pattern;


# direct methods
.method static synthetic -wrap0(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "TASKBAR_DEBUG"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    :goto_0
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->debuggable:Z

    sput-boolean v4, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->debuggable_drag_hierarchy:Z

    sput-boolean v1, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->debuggable_drag_info:Z

    sput-boolean v1, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->debuggable_task_monitor:Z

    sput-boolean v1, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->debuggable_aero_feature:Z

    sput v2, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->sIconWidth:I

    sput v2, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->sIconHeight:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->sOldBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->sCanvas:Landroid/graphics/Canvas;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->mBgPaint:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->sBlackPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->sCanvas:Landroid/graphics/Canvas;

    new-instance v2, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v5}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    const/high16 v0, -0x10000

    const v2, -0xff0100

    const v3, -0xffff01

    filled-new-array {v0, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->sColors:[I

    sput v4, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->sColorIndex:I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "android"

    aput-object v2, v0, v4

    const-string/jumbo v2, "system"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->mHiddenPkgString:[Ljava/lang/String;

    const-string/jumbo v0, "^[\\s|\\p{javaSpaceChar}]*(.*)[\\s|\\p{javaSpaceChar}]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->sTrimPattern:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->multiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    const-string/jumbo v0, "content://com.samsung.android.app.spage/dex"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->BIXBY_HOME_OOBE_URI:Landroid/net/Uri;

    const-string/jumbo v0, "content://com.samsung.android.bixby.agent.settings/bixby_voice_isenable"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->VOICE_ENABLE_URI:Landroid/net/Uri;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CreateScaledBitmapWithAppIconSize(Landroid/graphics/Bitmap;Landroid/content/Context;II)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p2, p3, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static final DEBUGGABLE()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->debuggable:Z

    return v0
.end method

.method public static DEBUGGABLE_AERO_FEATURE()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->debuggable:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->debuggable_aero_feature:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final DEBUGGABLE_DRAG_HIERARCHY()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->debuggable:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->debuggable_drag_hierarchy:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final DEBUGGABLE_DRAG_INFO()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->debuggable:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->debuggable_drag_info:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final DEBUGGABLE_TASK_MONITOR()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->debuggable:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->debuggable_task_monitor:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkIsHiddenApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    :cond_0
    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->mHiddenPkgString:[Ljava/lang/String;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_TASK_MONITOR()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "[DS]TaskBarUtilities"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "checkIsHiddenApp:: This app is filtered in task monitoring, pkgName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static checkUnAutoMataLanguageSelected(Landroid/content/Context;)Z
    .locals 11

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->getSelectedResult(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->getAutoMataResult(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v6, v8, :cond_0

    const/4 v3, 0x1

    :cond_3
    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string/jumbo v8, "[DS]TaskBarUtilities"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "checkUnAutoMataLanguageSelected() result= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " selectdList:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " automataList:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v3
.end method

.method public static createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 20

    sget-object v18, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->sCanvas:Landroid/graphics/Canvas;

    monitor-enter v18

    :try_start_0
    sget v17, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->sIconWidth:I

    const/16 v19, -0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    invoke-static/range {p1 .. p1}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->initStatics(Landroid/content/Context;)V

    :cond_0
    sget v16, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->sIconWidth:I

    sget v7, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->sIconHeight:I

    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/PaintDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/PaintDrawable;

    move-object v9, v0

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicWidth(I)V

    invoke-virtual {v9, v7}, Landroid/graphics/drawable/PaintDrawable;->setIntrinsicHeight(I)V

    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    if-lez v12, :cond_2

    if-lez v11, :cond_2

    int-to-float v0, v12

    move/from16 v17, v0

    int-to-float v0, v11

    move/from16 v19, v0

    div-float v10, v17, v19

    if-le v12, v11, :cond_4

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v17, v17, v10

    move/from16 v0, v17

    float-to-int v7, v0

    :cond_2
    :goto_1
    sget v14, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->sIconWidth:I

    sget v13, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->sIconHeight:I

    sget-object v17, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v17

    invoke-static {v14, v13, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    sget-object v5, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->sCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    sub-int v17, v14, v16

    div-int/lit8 v8, v17, 0x2

    sub-int v17, v13, v7

    div-int/lit8 v15, v17, 0x2

    const/4 v6, 0x0

    sget-object v17, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->sOldBounds:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    add-int v17, v8, v16

    add-int v19, v15, v7

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v8, v15, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    sget-object v17, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->sOldBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    const/16 v17, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v18

    return-object v3

    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    move/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v17

    if-nez v17, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(Landroid/util/DisplayMetrics;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v17

    monitor-exit v18

    throw v17

    :cond_4
    if-le v11, v12, :cond_2

    int-to-float v0, v7

    move/from16 v17, v0

    mul-float v17, v17, v10

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    goto :goto_1
.end method

.method private static declared-synchronized ensureBlackPaint()V
    .locals 3

    const-class v1, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->sBlackPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->sBlackPaint:Landroid/graphics/Paint;

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->sBlackPaint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->sBlackPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static ensureViewBgPaint(Landroid/view/View;)Landroid/graphics/Paint;
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->mBgPaint:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/16 v2, 0x7f

    const/16 v3, 0x9b

    const/16 v4, 0x64

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->getRandomColor(III)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v2, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->mBgPaint:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static findMainActivityWithCategoryLauncher(Landroid/content/Context;Landroid/content/ComponentName;I)Landroid/content/ComponentName;
    .locals 16

    const/4 v10, 0x0

    if-eqz p1, :cond_6

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v13, "android.intent.action.MAIN"

    invoke-direct {v8, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v13, "android.intent.category.LAUNCHER"

    invoke-virtual {v8, v13}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    const/4 v14, 0x0

    move/from16 v0, p2

    invoke-virtual {v13, v8, v14, v0}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_6

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_5

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v13, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v13}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object v10, v4

    :cond_1
    if-nez v10, :cond_6

    const-string/jumbo v13, "[DS]TaskBarUtilities"

    const-string/jumbo v14, "findMainActivityWithCategoryLauncher(). There are matched packages more than 2, but not matched equally. compare class name!"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v5, 0x0

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v13, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v13}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    if-ge v13, v11, :cond_4

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v7

    :goto_0
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_2

    invoke-virtual {v12, v6}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v9, v6}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-eq v13, v14, :cond_3

    if-le v6, v5, :cond_3

    move v5, v6

    move-object v10, v4

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    move v7, v11

    goto :goto_0

    :cond_5
    const/4 v13, 0x0

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    iget-object v13, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v13}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v10

    :cond_6
    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v13

    if-eqz v13, :cond_7

    const-string/jumbo v13, "[DS]TaskBarUtilities"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "findMainActivityWithCategoryLauncher target="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", result="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-object v10
.end method

.method public static getApplicationIconFromDb(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/sec/enterprise/ApplicationPolicy;->getApplicationIconFromDb(Ljava/lang/String;I)[B

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v4, v6}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v6
.end method

.method public static getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Landroid/sec/enterprise/ApplicationPolicy;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getAutoMataResult(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v12, ""

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v0, "automata_language_locale_list"

    const/4 v1, 0x0

    aput-object v0, v4, v1

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.sec.android.inputmethod.implement.setting.provider.KeyboardSettingsProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "NAME"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const/4 v0, -0x1

    if-eq v10, v0, :cond_0

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NAME"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "automata_language_locale_list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VALUE"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    goto :goto_0

    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :goto_2
    array-length v0, v13

    if-ge v9, v0, :cond_4

    aget-object v0, v13, v9

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :catch_0
    move-exception v8

    :try_start_1
    const-string/jumbo v0, "[DS]TaskBarUtilities"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getAutoMataResult() Exception! = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    return-object v6
.end method

.method public static getComponentNameFromPkg(Ljava/lang/String;Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getDeviceCountry()Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDeviceMUSELanguage()Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "en"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "ar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "zh"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string/jumbo v2, "fr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string/jumbo v2, "pt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "PT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v1, "pt_pt"

    :cond_2
    :goto_0
    const-string/jumbo v2, "es"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ES"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string/jumbo v1, "es_es"

    :cond_3
    :goto_1
    return-object v1

    :cond_4
    const-string/jumbo v1, "pt_latn"

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "es_latn"

    goto :goto_1
.end method

.method public static getIconFromTaskDescription(Landroid/content/Context;Landroid/app/ActivityManager$TaskDescription;I)Landroid/graphics/Bitmap;
    .locals 24

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityManager$TaskDescription;->getInMemoryIcon()Landroid/graphics/Bitmap;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    if-nez v20, :cond_0

    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-static {v0, v1}, Landroid/app/ActivityManager$TaskDescription;->loadTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v20

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_TASK_MONITOR()Z

    move-result v21

    if-eqz v21, :cond_1

    const-string/jumbo v21, "[DS]TaskBarUtilities"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "getIconFromTaskDescription() before color set appLabel: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " tdIcon: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " tdColor: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v20, :cond_4

    const/4 v10, 0x0

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 v21, 0x1

    move/from16 v0, v21

    iput-boolean v0, v4, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, v21

    iput-object v0, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v13, 0x0

    const/4 v12, 0x0

    const v21, 0x7f080159

    :try_start_1
    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-static {v0, v1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v21

    sget-object v22, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v23, 0x1

    invoke-virtual/range {v21 .. v23}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v11

    if-nez v11, :cond_2

    const-string/jumbo v21, "[DS]TaskBarUtilities"

    const-string/jumbo v22, "outputBitmap is not available. return tdIcon"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v20

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    const/4 v10, 0x0

    const v21, 0x7f08015a

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-static {v0, v1, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v21

    sget-object v22, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/16 v23, 0x1

    invoke-virtual/range {v21 .. v23}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v18

    :goto_1
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    new-instance v9, Landroid/graphics/LightingColorFilter;

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    invoke-direct {v9, v0, v1}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v15, v9}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setDither(Z)V

    new-instance v21, Landroid/graphics/PorterDuffXfermode;

    sget-object v22, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v21 .. v22}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v11, v0, v1, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v21, Landroid/graphics/PorterDuffXfermode;

    sget-object v22, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v21 .. v22}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v21, Landroid/graphics/RectF;

    int-to-float v0, v13

    move/from16 v22, v0

    sub-float v22, v22, v10

    int-to-float v0, v12

    move/from16 v23, v0

    sub-float v23, v23, v10

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v10, v10, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v5, v0, v1, v2, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    new-instance v21, Landroid/graphics/PorterDuffXfermode;

    sget-object v22, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct/range {v21 .. v22}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v5, v0, v1, v2, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v21

    move/from16 v0, p2

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    new-instance v21, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    new-instance v22, Landroid/os/UserHandle;

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-static {v6, v0}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v11

    :cond_3
    return-object v11

    :catch_1
    move-exception v7

    const-string/jumbo v21, "[DS]TaskBarUtilities"

    const-string/jumbo v22, "decodeResource is not available"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    return-object v20
.end method

.method public static getMultiWindowManager()Lcom/samsung/android/multiwindow/MultiWindowManager;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->multiWindowManager:Lcom/samsung/android/multiwindow/MultiWindowManager;

    return-object v0
.end method

.method public static getRandomColor(III)I
    .locals 5

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int v3, v4, p1

    invoke-virtual {v2, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int v1, v4, p1

    invoke-virtual {v2, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int v0, v4, p1

    invoke-static {p0, v3, v1, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    return v4
.end method

.method public static getRunningAppThumbnail(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string/jumbo v8, "activity"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    const/4 v7, 0x0

    if-lez p1, :cond_4

    sget-boolean v8, Landroid/app/ActivityManager;->ENABLE_TASK_SNAPSHOTS:Z

    if-eqz v8, :cond_2

    const/4 v5, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v8

    const/4 v9, 0x1

    invoke-interface {v8, p1, v9}, Landroid/app/IActivityManager;->getTaskSnapshot(IZ)Landroid/app/ActivityManager$TaskSnapshot;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :goto_0
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/Bitmap;->createHardwareBitmap(Landroid/graphics/GraphicBuffer;)Landroid/graphics/Bitmap;

    move-result-object v7

    :cond_0
    :goto_1
    return-object v7

    :catch_0
    move-exception v2

    const-string/jumbo v8, "[DS]TaskBarUtilities"

    const-string/jumbo v9, "getRunningAppThumbnail() Failed to retrieve snapshot"

    invoke-static {v8, v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v8, "[DS]TaskBarUtilities"

    const-string/jumbo v9, "getRunningAppThumbnail() Failed to retrieve snapshot"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-virtual {v4, p1}, Landroid/app/ActivityManager;->getTaskThumbnail(I)Landroid/app/ActivityManager$TaskThumbnail;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v7, v6, Landroid/app/ActivityManager$TaskThumbnail;->mainThumbnail:Landroid/graphics/Bitmap;

    if-nez v7, :cond_0

    const-string/jumbo v8, "[DS]TaskBarUtilities"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getRunningAppThumbnail, taskThumbnail.mainThumbnail is null!! taskId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v6, Landroid/app/ActivityManager$TaskThumbnail;->thumbnailFileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v12, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v8, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-static {v8, v11, v0}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    :try_start_1
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    const-string/jumbo v8, "[DS]TaskBarUtilities"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getRunningAppThumbnail() descriptor close Exception!! "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string/jumbo v8, "[DS]TaskBarUtilities"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getRunningAppThumbnail, taskThumbnail is null!! taskId ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    const-string/jumbo v8, "[DS]TaskBarUtilities"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getRunningAppThumbnail, cannot find this taskId="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public static getRunningTaskList(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/RunningTaskItem;",
            ">;"
        }
    .end annotation

    const/4 v15, 0x0

    const-string/jumbo v12, "activity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager;

    const v12, 0x7fffffff

    invoke-virtual {v7, v12}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v10

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v12, v8, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    invoke-static {v12}, Landroid/app/ActivityManager$StackId;->isStaticStack(I)Z

    move-result v12

    if-eqz v12, :cond_0

    iget v12, v8, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    if-eqz v12, :cond_0

    iget v12, v8, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    const/4 v13, 0x5

    if-eq v12, v13, :cond_0

    iget v12, v8, Landroid/app/ActivityManager$RunningTaskInfo;->numActivities:I

    if-lez v12, :cond_0

    iget-object v3, v8, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    iget-object v12, v8, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->checkIsHiddenApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    const/4 v11, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v12

    iget v13, v8, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-interface {v12, v13}, Landroid/app/IActivityManager;->getTaskInfoFromTaskId(I)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    const-string/jumbo v12, "[DS]TaskBarUtilities"

    const-string/jumbo v13, "failed to get TaskInfo From TaskId"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v15

    :cond_1
    const-string/jumbo v12, "lastTaskDescription"

    invoke-virtual {v2, v12}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Landroid/app/ActivityManager$TaskDescription;

    move-object v11, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v6, Lcom/android/systemui/statusbar/phone/taskbar/data/RunningTaskItem;

    iget v12, v8, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    iget v13, v8, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    invoke-direct {v6, v12, v13, v3, v11}, Lcom/android/systemui/statusbar/phone/taskbar/data/RunningTaskItem;-><init>(IILandroid/content/ComponentName;Landroid/app/ActivityManager$TaskDescription;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v5

    const-string/jumbo v12, "[DS]TaskBarUtilities"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getRunningTaskList() raise Exception!! "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v4

    const-string/jumbo v12, "[DS]TaskBarUtilities"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getRunningTaskList() raise Exception!! "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE_TASK_MONITOR()Z

    move-result v12

    if-eqz v12, :cond_3

    const-string/jumbo v12, "[DS]TaskBarUtilities"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getRunningTaskList with "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ":::"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v1
.end method

.method private static getSelectedResult(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v12, ""

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const-string/jumbo v0, "selected_language_list"

    const/4 v1, 0x0

    aput-object v0, v4, v1

    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "content://com.sec.android.inputmethod.implement.setting.provider.KeyboardSettingsProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "NAME"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const/4 v0, -0x1

    if-eq v10, v0, :cond_0

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NAME"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "selected_language_list"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VALUE"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    goto :goto_0

    :cond_1
    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :goto_2
    array-length v0, v13

    if-ge v9, v0, :cond_4

    aget-object v0, v13, v9

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :catch_0
    move-exception v8

    :try_start_1
    const-string/jumbo v0, "[DS]TaskBarUtilities"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getSelectedResult() Exception! = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    return-object v6
.end method

.method private static initStatics(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->sIconHeight:I

    sput v1, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->sIconWidth:I

    return-void
.end method

.method public static isAppSuspended(Landroid/content/pm/ApplicationInfo;)Z
    .locals 3

    const/4 v0, 0x0

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isChinaModel()Z
    .locals 2

    const-string/jumbo v0, "CHINA"

    const-string/jumbo v1, "ro.csc.country_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isContactUsAvailable(Landroid/content/Context;)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const v2, 0xa220268

    :try_start_0
    const-string/jumbo v5, "voc://view/contactUs"

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "android.intent.action.VIEW"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v6, "com.samsung.android.voc"

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v1, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string/jumbo v6, "com.samsung.android.voc"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget v6, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    const v7, 0xa220268

    if-lt v6, v7, :cond_0

    return v9

    :cond_0
    const-string/jumbo v6, "[DS]TaskBarUtilities"

    const-string/jumbo v7, "ContactUs activity is not available"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return v8

    :catch_0
    move-exception v0

    const-string/jumbo v6, "[DS]TaskBarUtilities"

    const-string/jumbo v7, "ContactUs activity is not available"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isInsideAppIcon(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x2

    new-array v0, v2, [I

    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v2, v0, v7

    aget v3, v0, v8

    aget v4, v0, v7

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    aget v5, v0, v8

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_0

    return v8

    :cond_0
    return v7
.end method

.method public static isInstalledGalaxyApps(Landroid/content/Context;I)Z
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.sec.android.app.samsungapps"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v2, "[DS]TaskBarUtilities"

    const-string/jumbo v3, "isInstalledGalaxyApps failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v5
.end method

.method public static isInstalledGooglePlay(Landroid/content/Context;I)Z
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.android.vending"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v2, "[DS]TaskBarUtilities"

    const-string/jumbo v3, "isInstalledGalaxyApps failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v5
.end method

.method public static isInstalledSamsungConnect(Landroid/content/Context;I)Z
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.oneconnect"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v1

    const-string/jumbo v2, "[DS]TaskBarUtilities"

    const-string/jumbo v3, "isInstalledGalaxyApps failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v5
.end method

.method public static isKnoxShortcut(Landroid/content/ComponentName;)Z
    .locals 2

    const-string/jumbo v0, "com.samsung.knox.rcp.components"

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "com.samsung.knox.rcp.components.SpecialActivity"

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.knox.rcp.components.Activity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isMultiInstanceSupported(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->getMultiWindowManager()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    :try_start_0
    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isLaunchableForMultiInstance(Landroid/content/pm/ActivityInfo;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isServiceOnBixbyHome(Landroid/content/ContentResolver;)Z
    .locals 13

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "[DS]TaskBarUtilities"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isServiceOnBixbyHome resolver"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->BIXBY_HOME_OOBE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_0
    if-eqz v6, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v0, "bixbyhome_enable"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v12

    const/4 v0, 0x1

    if-ne v0, v12, :cond_1

    const/4 v11, 0x1

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_2
    const-string/jumbo v0, "[DS]TaskBarUtilities"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isServiceOnBixbyHome = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :catch_0
    move-exception v10

    const-string/jumbo v0, "[DS]TaskBarUtilities"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isServiceOnBixbyHome"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v9

    const-string/jumbo v0, "[DS]TaskBarUtilities"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NullPointerException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    :catch_2
    move-exception v9

    :try_start_2
    const-string/jumbo v0, "[DS]TaskBarUtilities"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NullPointerException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catch_3
    move-exception v7

    :try_start_3
    const-string/jumbo v0, "[DS]TaskBarUtilities"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CursorIndexOutOfBoundsException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :catch_4
    move-exception v8

    :try_start_4
    const-string/jumbo v0, "[DS]TaskBarUtilities"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CursorWindowAllocationException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    const-string/jumbo v0, "[DS]TaskBarUtilities"

    const-string/jumbo v1, "isServiceOnBixbyHome FALSE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static isServiceOnBixbyVoice(Landroid/content/ContentResolver;)Z
    .locals 13

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "[DS]TaskBarUtilities"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isServiceOnBixbyVoice resolver"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x2

    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->VOICE_ENABLE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :goto_0
    if-eqz v6, :cond_2

    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string/jumbo v0, "bixby_voice_isenable"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v12

    const/4 v0, 0x1

    if-ne v0, v12, :cond_1

    const/4 v11, 0x1

    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_2
    const-string/jumbo v0, "[DS]TaskBarUtilities"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isServiceOnBixbyVoice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v11

    :catch_0
    move-exception v10

    const-string/jumbo v0, "[DS]TaskBarUtilities"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isServiceOnBixbyVoice"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v9

    const-string/jumbo v0, "[DS]TaskBarUtilities"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NullPointerException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    :catch_2
    move-exception v7

    :try_start_2
    const-string/jumbo v0, "[DS]TaskBarUtilities"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CursorIndexOutOfBoundsException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catch_3
    move-exception v8

    :try_start_3
    const-string/jumbo v0, "[DS]TaskBarUtilities"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CursorWindowAllocationException"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    const-string/jumbo v0, "[DS]TaskBarUtilities"

    const-string/jumbo v1, "isServiceOnBixbyVoice FALSE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static isSystemApp(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 9

    const/4 v7, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v4, 0x0

    if-nez v0, :cond_2

    const/high16 v8, 0x10000

    invoke-virtual {v5, p1, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_0

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :cond_0
    :goto_0
    if-eqz v4, :cond_3

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v5, v4, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    const/16 v6, 0x81

    if-eqz v2, :cond_1

    iget-object v8, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_1

    iget-object v8, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v8, v8, 0x81

    if-eqz v8, :cond_1

    const/4 v7, 0x1

    :cond_1
    return v7

    :cond_2
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :catch_0
    move-exception v1

    return v7

    :cond_3
    return v7
.end method

.method public static isTopTask(Landroid/content/Context;I)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    const-string/jumbo v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-lez p1, :cond_0

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v1, :cond_1

    iget v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    if-ne v2, p1, :cond_1

    return v3

    :cond_0
    const-string/jumbo v2, "[DS]TaskBarUtilities"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isTopTask, taskId is wrong. taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v5
.end method

.method public static launchAppInGalaxyApps(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "samsungapps://ProductDetail/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string/jumbo v2, "sKeyword"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "[DS]TaskBarUtilities"

    const-string/jumbo v3, "launchAppInGalaxyApps failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static launchAppInPlayStore(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "market://details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v2, 0x10200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "[DS]TaskBarUtilities"

    const-string/jumbo v3, "launchAppInPlayStore failed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static minimizeFreeformTask(I)V
    .locals 1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->getMultiWindowManager()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->getMultiWindowManager()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->minimizeFreeformTask(I)V

    :cond_0
    return-void
.end method

.method public static moveToFront(Landroid/content/Context;I)Z
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "activity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-lez p1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const-string/jumbo v1, "[DS]TaskBarUtilities"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "moveToFront, taskId is wrong. taskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public static onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;Z)V

    return-void
.end method

.method public static onViewDraw(Landroid/view/View;Landroid/graphics/Canvas;Z)V
    .locals 13

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v11

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v12

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->ensureViewBgPaint(Landroid/view/View;)Landroid/graphics/Paint;

    move-result-object v5

    int-to-float v1, v11

    int-to-float v2, v12

    add-int v0, v11, v10

    int-to-float v3, v0

    add-int v0, v12, v7

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->ensureBlackPaint()V

    invoke-virtual {p0}, Landroid/view/View;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->sBlackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->sBlackPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    add-float/2addr v0, v1

    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->sBlackPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    add-float v8, v0, v1

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->sBlackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v9

    int-to-float v0, v11

    int-to-float v1, v10

    sub-float/2addr v1, v9

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    add-int v1, v12, v7

    int-to-float v1, v1

    sub-float/2addr v1, v8

    sget-object v2, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->sBlackPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public static removeTask(Landroid/content/Context;I)V
    .locals 5

    const-string/jumbo v2, "activity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/16 v2, 0x14

    invoke-virtual {v0, p1, v2}, Landroid/app/ActivityManager;->semRemoveTask(II)Z

    move-result v1

    :cond_0
    if-nez v1, :cond_1

    const-string/jumbo v2, "[DS]TaskBarUtilities"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeTask, cannot find this taskId ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private static saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .locals 9

    const/4 v8, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string/jumbo v6, "[DS]TaskBarUtilities"

    const-string/jumbo v7, "saveBitmap fail. bitmap or filePath is null!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_1
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {p0, v6, v7, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_3

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v5, v4}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_0
    return v6

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_2
    const-string/jumbo v6, "[DS]TaskBarUtilities"

    const-string/jumbo v7, "saveBitmap fail. Something is wrong!!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception v0

    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v3, :cond_3

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_2

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v6

    :goto_4
    if-eqz v3, :cond_4

    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    :cond_4
    :goto_5
    throw v6

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_1
    move-exception v6

    move-object v3, v4

    goto :goto_4

    :catch_6
    move-exception v0

    move-object v3, v4

    goto :goto_3

    :catch_7
    move-exception v1

    move-object v3, v4

    goto :goto_1
.end method

.method public static saveBitmapAsync(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities$SaveBitmapTask;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities$SaveBitmapTask;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities$SaveBitmapTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static startServiceBixbyHomeApp(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "[DS]TaskBarUtilities"

    const-string/jumbo v2, "startServiceBixbyHomeApp call bixby home"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.android.app.spage"

    const-string/jumbo v2, "com.samsung.android.app.spage.service.SpageService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "fromDeX"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "[DS]TaskBarUtilities"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClick bixby_home intent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static toStringDragEvnet(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown ACTION :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "ACTION_DRAG_STARTED"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "ACTION_DRAG_ENTERED"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "ACTION_DRAG_LOCATION"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "ACTION_DRAG_EXITED"

    return-object v0

    :pswitch_4
    const-string/jumbo v0, "ACTION_DROP"

    return-object v0

    :pswitch_5
    const-string/jumbo v0, "ACTION_DRAG_ENDED"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static trim(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->sTrimPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string/jumbo v1, "$1"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
