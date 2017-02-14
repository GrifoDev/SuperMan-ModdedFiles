.class Lcom/android/launcher2/WidgetSizes;
.super Ljava/lang/Object;
.source "WidgetSizes.java"


# static fields
.field private static final DEBUGGABLE:Z

.field static final EXTRA_WIDGET_RESIZE_SPANX:Ljava/lang/String; = "widgetspanx"

.field static final EXTRA_WIDGET_RESIZE_SPANY:Ljava/lang/String; = "widgetspany"

.field static final EXTRA_WIDGET_RESIZE_WIDGETID:Ljava/lang/String; = "widgetId"

.field private static final TAG:Ljava/lang/String; = "Launcher.WidgetSizes"

.field static final WIDGET_RESIZE:Ljava/lang/String; = "com.sec.android.widgetapp.APPWIDGET_RESIZE"

.field static final WIDGET_SUPPORT_INFO:Ljava/lang/String; = "com.sec.android.appwidget.widgetinfo"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMaxXSpan:I

.field private mMaxYSpan:I

.field private mMinXSpan:I

.field private mMinYSpan:I

.field private mResizeMode:I

.field private mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

.field private mValidSizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation
.end field

.field public pureGoogle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/WidgetSizes;->DEBUGGABLE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/16 v2, 0x3e8

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/launcher2/WidgetSizes;->mResizeMode:I

    iput v2, p0, Lcom/android/launcher2/WidgetSizes;->mMinXSpan:I

    iput v2, p0, Lcom/android/launcher2/WidgetSizes;->mMinYSpan:I

    iput v1, p0, Lcom/android/launcher2/WidgetSizes;->mMaxXSpan:I

    iput v1, p0, Lcom/android/launcher2/WidgetSizes;->mMaxYSpan:I

    iput-boolean v0, p0, Lcom/android/launcher2/WidgetSizes;->pureGoogle:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/WidgetSizes;->mValidSizes:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/launcher2/WidgetSizes;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/launcher2/WorkspaceSpanCalculator;->INSTANCE:Lcom/android/launcher2/WorkspaceSpanCalculator;

    iput-object v0, p0, Lcom/android/launcher2/WidgetSizes;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    return-void
.end method

.method private add(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher2/WidgetSizes;->mValidSizes:Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/android/launcher2/WidgetSizes;->mMinXSpan:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/WidgetSizes;->mMinXSpan:I

    iget v0, p0, Lcom/android/launcher2/WidgetSizes;->mMinYSpan:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/WidgetSizes;->mMinYSpan:I

    iget v0, p0, Lcom/android/launcher2/WidgetSizes;->mMaxXSpan:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/WidgetSizes;->mMaxXSpan:I

    iget v0, p0, Lcom/android/launcher2/WidgetSizes;->mMaxYSpan:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/WidgetSizes;->mMaxYSpan:I

    iget v0, p0, Lcom/android/launcher2/WidgetSizes;->mMaxXSpan:I

    iget v1, p0, Lcom/android/launcher2/WidgetSizes;->mMinXSpan:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/WidgetSizes;->mResizeMode:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher2/WidgetSizes;->mResizeMode:I

    :cond_0
    iget v0, p0, Lcom/android/launcher2/WidgetSizes;->mMaxYSpan:I

    iget v1, p0, Lcom/android/launcher2/WidgetSizes;->mMinYSpan:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/launcher2/WidgetSizes;->mResizeMode:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/launcher2/WidgetSizes;->mResizeMode:I

    :cond_1
    return-void
.end method

.method private loadAsPureGoogle(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 4

    const/4 v3, 0x1

    iget v1, p1, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    iput v1, p0, Lcom/android/launcher2/WidgetSizes;->mResizeMode:I

    iget-object v1, p0, Lcom/android/launcher2/WidgetSizes;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getResizeSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/android/launcher2/WidgetSizes;->mMinXSpan:I

    aget v1, v0, v3

    iput v1, p0, Lcom/android/launcher2/WidgetSizes;->mMinYSpan:I

    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Lcom/android/launcher2/WidgetSizes;->mMaxXSpan:I

    const/4 v1, 0x3

    aget v1, v0, v1

    iput v1, p0, Lcom/android/launcher2/WidgetSizes;->mMaxYSpan:I

    iput-boolean v3, p0, Lcom/android/launcher2/WidgetSizes;->pureGoogle:Z

    return-void
.end method


# virtual methods
.method public capHeight(I)I
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher2/WidgetSizes;->pureGoogle:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    iget v1, p0, Lcom/android/launcher2/WidgetSizes;->mMaxYSpan:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/WidgetSizes;->mMaxYSpan:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_0
    :goto_0
    return p1

    :cond_1
    iget v0, p0, Lcom/android/launcher2/WidgetSizes;->mMaxYSpan:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/WidgetSizes;->mMinYSpan:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0
.end method

.method public capWidth(I)I
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher2/WidgetSizes;->pureGoogle:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    iget v1, p0, Lcom/android/launcher2/WidgetSizes;->mMaxXSpan:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/WidgetSizes;->mMaxXSpan:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_0
    :goto_0
    return p1

    :cond_1
    iget v0, p0, Lcom/android/launcher2/WidgetSizes;->mMaxXSpan:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/WidgetSizes;->mMinXSpan:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0
.end method

.method public getAvailableSizeCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/WidgetSizes;->mValidSizes:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/WidgetSizes;->mValidSizes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getMinXSpan()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/WidgetSizes;->mMinXSpan:I

    return v0
.end method

.method public getMinYSpan()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/WidgetSizes;->mMinYSpan:I

    return v0
.end method

.method public getValidSizes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/WidgetSizes;->mValidSizes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isAvailableSize(II)Z
    .locals 5

    const/4 v4, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/launcher2/WidgetSizes;->pureGoogle:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/launcher2/WidgetSizes;->mMaxXSpan:I

    if-eq v4, v3, :cond_0

    iget v3, p0, Lcom/android/launcher2/WidgetSizes;->mMaxXSpan:I

    if-gt p1, v3, :cond_3

    :cond_0
    iget v3, p0, Lcom/android/launcher2/WidgetSizes;->mMaxYSpan:I

    if-eq v4, v3, :cond_1

    iget v3, p0, Lcom/android/launcher2/WidgetSizes;->mMaxYSpan:I

    if-gt p2, v3, :cond_3

    :cond_1
    :goto_0
    move v2, v1

    :cond_2
    :goto_1
    :pswitch_0
    return v2

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/launcher2/WidgetSizes;->mValidSizes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v4, v0, v2

    if-ne v4, p1, :cond_5

    aget v4, v0, v1

    if-ne v4, p2, :cond_5

    move v2, v1

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lcom/android/launcher2/WidgetSizes;->mValidSizes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_2

    iget v3, p0, Lcom/android/launcher2/WidgetSizes;->mResizeMode:I

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    :pswitch_1
    iget v3, p0, Lcom/android/launcher2/WidgetSizes;->mMinXSpan:I

    if-lt v3, p1, :cond_7

    iget v3, p0, Lcom/android/launcher2/WidgetSizes;->mMaxXSpan:I

    if-le v3, p1, :cond_2

    :cond_7
    move v2, v1

    goto :goto_1

    :pswitch_2
    iget v3, p0, Lcom/android/launcher2/WidgetSizes;->mMinYSpan:I

    if-lt v3, p2, :cond_8

    iget v3, p0, Lcom/android/launcher2/WidgetSizes;->mMaxYSpan:I

    if-le v3, p2, :cond_2

    :cond_8
    move v2, v1

    goto :goto_1

    :pswitch_3
    iget v3, p0, Lcom/android/launcher2/WidgetSizes;->mMinXSpan:I

    if-lt v3, p1, :cond_9

    iget v3, p0, Lcom/android/launcher2/WidgetSizes;->mMaxXSpan:I

    if-gt v3, p1, :cond_9

    iget v3, p0, Lcom/android/launcher2/WidgetSizes;->mMaxYSpan:I

    if-lt v3, p2, :cond_9

    iget v3, p0, Lcom/android/launcher2/WidgetSizes;->mMaxYSpan:I

    if-le v3, p2, :cond_2

    :cond_9
    move v2, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public load(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 22

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    const/4 v9, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/WidgetSizes;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x4

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    :goto_1
    if-eqz v9, :cond_8

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    new-instance v19, Landroid/content/Intent;

    const-string v20, "com.sec.android.widgetapp.APPWIDGET_RESIZE"

    invoke-direct/range {v19 .. v20}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v6

    sget-boolean v19, Lcom/android/launcher2/WidgetSizes;->DEBUGGABLE:Z

    if-eqz v19, :cond_2

    const-string v19, "Launcher.WidgetSizes"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "LOAD: info recieved: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/WidgetSizes;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    const/16 v20, 0x80

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v6, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v19, v0

    const-string v20, "com.sec.android.appwidget.widgetinfo"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v11

    if-eqz v11, :cond_8

    :cond_4
    :try_start_1
    invoke-interface {v11}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v17

    const/16 v19, 0x2

    move/from16 v0, v17

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    const/16 v19, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    :cond_5
    :goto_2
    const/16 v19, 0x0

    const-string v20, "supportCellSizes"

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v11, v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v14

    if-lez v14, :cond_8

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_8

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v3, v0, [I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/WidgetSizes;->mSpanCalculator:Lcom/android/launcher2/WorkspaceSpanCalculator;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher2/WorkspaceSpanCalculator;->getSpanForWidget(Landroid/appwidget/AppWidgetProviderInfo;[I)[I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/WidgetSizes;->mResizeMode:I

    const/16 v19, 0x0

    aget v19, v3, v19

    const/16 v20, 0x1

    aget v20, v3, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/WidgetSizes;->add(II)V

    array-length v0, v12

    move/from16 v20, v0

    const/16 v19, 0x0

    :goto_3
    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    aget-object v10, v12, v19

    const/16 v21, 0x78

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v18

    const/16 v21, 0x0

    move/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    add-int/lit8 v21, v18, 0x1

    move/from16 v0, v21

    invoke-virtual {v10, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    const/16 v21, 0x0

    aget v21, v3, v21

    move/from16 v0, v21

    if-ne v15, v0, :cond_6

    const/16 v21, 0x1

    aget v21, v3, v21

    move/from16 v0, v16

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/launcher2/WidgetSizes;->add(II)V

    :cond_7
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_1

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto/16 :goto_1

    :catch_2
    move-exception v4

    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_2

    :catch_3
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher2/WidgetSizes;->loadAsPureGoogle(Landroid/appwidget/AppWidgetProviderInfo;)V

    goto/16 :goto_0
.end method

.method public resizeMode()I
    .locals 1

    iget v0, p0, Lcom/android/launcher2/WidgetSizes;->mResizeMode:I

    return v0
.end method

.method public setMinSpan(II)V
    .locals 0

    iput p1, p0, Lcom/android/launcher2/WidgetSizes;->mMinXSpan:I

    iput p2, p0, Lcom/android/launcher2/WidgetSizes;->mMinYSpan:I

    return-void
.end method
