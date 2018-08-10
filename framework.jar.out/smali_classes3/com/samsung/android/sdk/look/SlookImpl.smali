.class public Lcom/samsung/android/sdk/look/SlookImpl;
.super Ljava/lang/Object;
.source "SlookImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/look/SlookImpl$VERSION_CODES;
    }
.end annotation


# static fields
.field private static final AIRBUTTON:I = 0x1

.field private static final COCKTAIL_BAR:I = 0x6

.field private static final COCKTAIL_PANEL:I = 0x7

.field public static final DEBUG:Z = true

.field private static final SDK_INT:I

.field private static final SMARTCLIP:I = 0x2

.field private static final SPEN_HOVER_ICON:I = 0x4

.field private static final WRITINGBUDDY:I = 0x3

.field private static sCocktailLevel:I

.field private static sHasMetaEdgeSingle:I

.field private static sUspLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, -0x1

    const-string/jumbo v0, "ro.slook.ver"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/samsung/android/sdk/look/SlookImpl;->SDK_INT:I

    sput v2, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    sput v2, Lcom/samsung/android/sdk/look/SlookImpl;->sUspLevel:I

    sput v2, Lcom/samsung/android/sdk/look/SlookImpl;->sHasMetaEdgeSingle:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkCocktailLevel()V
    .locals 5

    const/4 v2, 0x0

    sget v3, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    const-string/jumbo v3, "com.sec.feature.cocktailbar"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x6

    :goto_0
    sput v3, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    sget v3, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    if-nez v3, :cond_1

    const-string/jumbo v3, "com.sec.feature.cocktailpanel"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x7

    :cond_0
    sput v2, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :cond_2
    move v3, v2

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Package manager has died"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static checkValidCocktailMetaData()V
    .locals 15

    const/4 v14, 0x0

    sget v12, Lcom/samsung/android/sdk/look/SlookImpl;->sHasMetaEdgeSingle:I

    const/4 v13, -0x1

    if-ne v12, v13, :cond_6

    sput v14, Lcom/samsung/android/sdk/look/SlookImpl;->sHasMetaEdgeSingle:I

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v9

    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v8

    if-eqz v9, :cond_0

    if-nez v8, :cond_1

    :cond_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    const/16 v13, 0x80

    invoke-interface {v9, v8, v13, v12}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v7, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_2

    const-string/jumbo v12, "com.samsung.android.cocktail.mode"

    const-string/jumbo v13, ""

    invoke-virtual {v7, v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    const-string/jumbo v12, "edge_single"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x1

    sput v12, Lcom/samsung/android/sdk/look/SlookImpl;->sHasMetaEdgeSingle:I

    :cond_2
    sget v12, Lcom/samsung/android/sdk/look/SlookImpl;->sHasMetaEdgeSingle:I

    if-nez v12, :cond_6

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v12, "com.samsung.android.cocktail.action.COCKTAIL_UPDATE"

    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    invoke-virtual {v6, v12}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v12

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    const/16 v14, 0x80

    invoke-interface {v9, v6, v12, v14, v13}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_4

    const/4 v0, 0x0

    :goto_0
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_6

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v1, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v13, 0x40000

    and-int/2addr v12, v13

    if-eqz v12, :cond_5

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_5
    iget-object v12, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_3

    const-string/jumbo v12, "com.samsung.android.cocktail.mode"

    const-string/jumbo v13, ""

    invoke-virtual {v7, v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    const-string/jumbo v12, "edge_single"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    sput v12, Lcom/samsung/android/sdk/look/SlookImpl;->sHasMetaEdgeSingle:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_2
    return-void

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2
.end method

.method public static getVersionCode()I
    .locals 1

    sget v0, Lcom/samsung/android/sdk/look/SlookImpl;->SDK_INT:I

    return v0
.end method

.method public static isFeatureEnabled(I)Z
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return v2

    :pswitch_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    return v2

    :cond_0
    :pswitch_2
    sget v3, Lcom/samsung/android/sdk/look/SlookImpl;->sUspLevel:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    :cond_1
    if-ne p0, v1, :cond_3

    sget v3, Lcom/samsung/android/sdk/look/SlookImpl;->sUspLevel:I

    if-lt v3, v5, :cond_2

    sget v3, Lcom/samsung/android/sdk/look/SlookImpl;->sUspLevel:I

    if-gt v3, v6, :cond_2

    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    if-ne p0, v6, :cond_5

    sget v3, Lcom/samsung/android/sdk/look/SlookImpl;->sUspLevel:I

    if-lt v3, v5, :cond_4

    sget v3, Lcom/samsung/android/sdk/look/SlookImpl;->sUspLevel:I

    const/16 v4, 0x9

    if-gt v3, v4, :cond_4

    move v2, v1

    :cond_4
    return v2

    :cond_5
    sget v3, Lcom/samsung/android/sdk/look/SlookImpl;->sUspLevel:I

    if-lt v3, v5, :cond_6

    :goto_1
    return v1

    :cond_6
    move v1, v2

    goto :goto_1

    :pswitch_3
    invoke-static {}, Lcom/samsung/android/sdk/look/SlookImpl;->checkCocktailLevel()V

    sget v3, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    if-lez v3, :cond_7

    sget v3, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    if-gt v3, p0, :cond_7

    return v1

    :cond_7
    sget v3, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    if-lez v3, :cond_9

    invoke-static {}, Lcom/samsung/android/sdk/look/SlookImpl;->checkValidCocktailMetaData()V

    sget v3, Lcom/samsung/android/sdk/look/SlookImpl;->sHasMetaEdgeSingle:I

    if-ne v3, v1, :cond_8

    :goto_2
    return v1

    :cond_8
    move v1, v2

    goto :goto_2

    :cond_9
    return v2

    :pswitch_4
    invoke-static {}, Lcom/samsung/android/sdk/look/SlookImpl;->checkCocktailLevel()V

    sget v3, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    if-lez v3, :cond_a

    sget v3, Lcom/samsung/android/sdk/look/SlookImpl;->sCocktailLevel:I

    if-gt v3, p0, :cond_a

    move v2, v1

    :cond_a
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
