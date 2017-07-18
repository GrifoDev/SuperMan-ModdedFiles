.class Lcom/android/launcher2/compat/AppWidgetManagerCompatVL;
.super Lcom/android/launcher2/compat/AppWidgetManagerCompat;
.source "AppWidgetManagerCompatVL.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# instance fields
.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher2/compat/AppWidgetManagerCompat;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/compat/AppWidgetManagerCompatVL;->mPm:Landroid/content/pm/PackageManager;

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/launcher2/compat/AppWidgetManagerCompatVL;->mUserManager:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method public getAllProviders()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v3

    iget-object v7, p0, Lcom/android/launcher2/compat/AppWidgetManagerCompatVL;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v7}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserHandle;

    if-eqz v3, :cond_1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    :cond_1
    iget-object v8, p0, Lcom/android/launcher2/compat/AppWidgetManagerCompatVL;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    invoke-virtual {v8, v6}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-array v0, v13, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v0, v12

    const-class v8, Landroid/os/UserHandle;

    aput-object v8, v0, v11

    const-string v8, "android.appwidget.AppWidgetManager"

    const-string v9, "getInstalledProvidersForProfile"

    invoke-static {v8, v9, v0, v11}, Lcom/android/launcher2/Reflection;->getMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;Z)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v8, p0, Lcom/android/launcher2/compat/AppWidgetManagerCompatVL;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v8

    new-array v9, v13, [Ljava/lang/Object;

    sget v10, Lcom/android/launcher2/compat/AppWidgetManagerCompat;->SEM_WIDGET_CATEGORY_SAMSUNG_HOME_SCREEN:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    aput-object v6, v9, v11

    invoke-static {v8, v1, v9}, Lcom/android/launcher2/Reflection;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    iget v9, v2, Landroid/appwidget/AppWidgetProviderInfo;->widgetCategory:I

    sget v10, Lcom/android/launcher2/compat/AppWidgetManagerCompat;->SEM_WIDGET_CATEGORY_SAMSUNG_HOME_SCREEN:I

    if-ne v9, v10, :cond_2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v4
.end method

.method public getBadgeBitmap(Landroid/appwidget/AppWidgetProviderInfo;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 13

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v9

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    :goto_0
    return-object p2

    :cond_0
    iget-object v9, p0, Lcom/android/launcher2/compat/AppWidgetManagerCompatVL;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move/from16 v0, p3

    int-to-float v9, v0

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v9, v10

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    move/from16 v0, p4

    int-to-float v10, v0

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v10, v11

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v7

    const v9, 0x7f0a03bb

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v9, v7, v9

    if-gez v9, :cond_1

    int-to-float v9, v3

    div-float/2addr v9, v7

    float-to-int v3, v9

    :cond_1
    const v9, 0x7f0a03ba

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int/2addr v9, v3

    sub-int v8, v9, v2

    if-gez v8, :cond_2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int/lit8 v10, v2, 0x2

    sub-int v3, v9, v10

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int/2addr v9, v3

    sub-int v8, v9, v2

    :cond_2
    new-instance v1, Landroid/graphics/Rect;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct {v1, v9, v10, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    invoke-virtual {v1, v2, v8}, Landroid/graphics/Rect;->offset(II)V

    :goto_1
    iget-object v9, p0, Lcom/android/launcher2/compat/AppWidgetManagerCompatVL;->mPm:Landroid/content/pm/PackageManager;

    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v10, v6, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v1, v12}, Landroid/content/pm/PackageManager;->getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    instance-of v9, v5, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v9, :cond_4

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    sub-int/2addr v9, v3

    sub-int/2addr v9, v2

    invoke-virtual {v1, v9, v8}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    invoke-virtual {p2, v9}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-virtual {v5, v9, v10, v11, v12}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0
.end method

.method public getUser(Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher2/compat/UserHandleCompat;
    .locals 1

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher2/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v0

    return-object v0
.end method

.method public loadLabel(Landroid/appwidget/AppWidgetProviderInfo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/compat/AppWidgetManagerCompatVL;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/appwidget/AppWidgetProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public loadPreview(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/compat/AppWidgetManagerCompatVL;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/appwidget/AppWidgetProviderInfo;->loadPreviewImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public startConfigActivity(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/app/Activity;Landroid/appwidget/AppWidgetHost;I)V
    .locals 9

    const/high16 v8, 0x7f090000

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p4

    move-object v1, p3

    move v2, p2

    move v4, p5

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/appwidget/AppWidgetHost;->startAppWidgetConfigureActivityForResult(Landroid/app/Activity;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v6

    invoke-static {p3, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :catch_1
    move-exception v6

    invoke-static {p3, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
