.class public Lcom/android/server/cocktailbar/utils/CocktailBarConfig;
.super Ljava/lang/Object;
.source "CocktailBarConfig.java"


# static fields
.field private static final DEFAULT_VERSION:I = 0x1

.field private static final INTENT_FILTER:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice"

.field private static final META_DATA:Ljava/lang/String; = "com.samsung.android.edge.config"

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_CATEGORY_FILTER:Ljava/lang/String; = "category_filter"

.field private static final TAG_META_DATA_HIDE_EDGE_SERVICE:Ljava/lang/String; = "meta_data_hide_edge_service"

.field private static final TAG_PACKAGE_HIDE_EDGE_SERVICE:Ljava/lang/String; = "package_hide_edge_service"

.field private static final TAG_PREFERRED_WIDTH:Ljava/lang/String; = "preferred_width"

.field private static final TAG_REPLACED_COMPONENT:Ljava/lang/String; = "replaced_component"

.field private static final TAG_VERSION:Ljava/lang/String; = "version"

.field public static sInstance:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;


# instance fields
.field private mCategoryFilter:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoryFilterStr:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIsServiceFounded:Z

.field private mMetaDataHideEdgeService:Ljava/lang/String;

.field private mPackageHideEdgeServiceList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPreferredWidth:I

.field private final mReplacedComponent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mVersion:I

    iput v1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPreferredWidth:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPackageHideEdgeServiceList:Ljava/util/HashSet;

    iput-boolean v1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mIsServiceFounded:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mReplacedComponent:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->parseEdgeConfig()V

    return-void
.end method

.method private addReplcaedComponent(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addReplcaedComponent: value is empty. -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    aget-object v1, v0, v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    aget-object v1, v0, v4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    sget-object v1, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addReplcaedComponent: value is wrong. - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mReplacedComponent:Ljava/util/HashMap;

    aget-object v2, v0, v3

    aget-object v3, v0, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private getEdgeConfigParser()Landroid/content/res/XmlResourceParser;
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.android.app.cocktailbarservice"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v5, 0x80

    invoke-virtual {v4, v0, v5, v7}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mIsServiceFounded:Z

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v4}, Landroid/content/pm/ServiceInfo;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getEdgeConfigParser: not enabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-static {v4, v7}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarWhiteList;->isSystemApplication(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v6, "com.samsung.android.edge.config"

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    return-object v4

    :cond_1
    sget-object v4, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getEdgeConfigParser: not system app: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iput-boolean v7, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mIsServiceFounded:Z

    sget-object v4, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "getEdgeConfigParser: no enabled cocktailbarservice"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v8
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/cocktailbar/utils/CocktailBarConfig;
    .locals 1

    sget-object v0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->sInstance:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    invoke-direct {v0, p0}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->sInstance:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    :cond_0
    sget-object v0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->sInstance:Lcom/android/server/cocktailbar/utils/CocktailBarConfig;

    return-object v0
.end method

.method private parseEdgeConfig()V
    .locals 5

    invoke-direct {p0}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->getEdgeConfigParser()Landroid/content/res/XmlResourceParser;

    move-result-object v2

    const-string/jumbo v4, "ro.product.name"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_0

    :try_start_0
    invoke-direct {p0, v2, v3}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->parseXml(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    throw v4
.end method

.method private parseXml(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v4, 0x1

    if-eq v0, v4, :cond_8

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v0

    goto :goto_0

    :pswitch_0
    const-string/jumbo v4, "version"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "name"

    const/4 v5, 0x2

    invoke-interface {p1, v6, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mVersion:I

    goto :goto_1

    :cond_1
    const-string/jumbo v4, "category_filter"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "product"

    invoke-interface {p1, v6, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mCategoryFilterStr:Ljava/lang/String;

    if-nez v4, :cond_2

    const-string/jumbo v4, "default"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    if-eqz p2, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_3
    const-string/jumbo v4, "value"

    invoke-interface {p1, v6, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mCategoryFilterStr:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string/jumbo v4, "preferred_width"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "value"

    const/16 v5, 0xa0

    invoke-interface {p1, v6, v4, v5}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPreferredWidth:I

    goto :goto_1

    :cond_5
    const-string/jumbo v4, "package_hide_edge_service"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "value"

    invoke-interface {p1, v6, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPackageHideEdgeServiceList:Ljava/util/HashSet;

    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    const-string/jumbo v4, "meta_data_hide_edge_service"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string/jumbo v4, "value"

    invoke-interface {p1, v6, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mMetaDataHideEdgeService:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    const-string/jumbo v4, "replaced_component"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "value"

    invoke-interface {p1, v6, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->addReplcaedComponent(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dump()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string/jumbo v1, "[CocktailBarConfig] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mVersion:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v1, " categoryStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mCategoryFilterStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, " width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPreferredWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPackageHideEdgeServiceList:Ljava/util/HashSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPackageHideEdgeServiceList:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    const-string/jumbo v1, " hideAppList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPackageHideEdgeServiceList:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const-string/jumbo v1, "replaced cn size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mReplacedComponent:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCategoryFilter()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mCategoryFilter:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mCategoryFilterStr:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mCategoryFilter:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mCategoryFilterStr:Ljava/lang/String;

    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    iget-object v4, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mCategoryFilter:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "getCategoryFilter: CategoryFilterStr is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v2, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mCategoryFilter:Ljava/util/ArrayList;

    return-object v2
.end method

.method public getCategoryFilterStr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mCategoryFilterStr:Ljava/lang/String;

    return-object v0
.end method

.method public getConvertedComponent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mReplacedComponent:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getMetaDataHideEdgeService()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mMetaDataHideEdgeService:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageHideEdgeServiceList()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPackageHideEdgeServiceList:Ljava/util/HashSet;

    return-object v0
.end method

.method public getPreferredWidth()I
    .locals 1

    iget v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mPreferredWidth:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mVersion:I

    return v0
.end method

.method public reload()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mIsServiceFounded:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->parseEdgeConfig()V

    iget-boolean v0, p0, Lcom/android/server/cocktailbar/utils/CocktailBarConfig;->mIsServiceFounded:Z

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
