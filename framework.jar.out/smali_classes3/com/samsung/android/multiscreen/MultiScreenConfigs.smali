.class public Lcom/samsung/android/multiscreen/MultiScreenConfigs;
.super Landroid/util/Singleton;
.source "MultiScreenConfigs.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton",
        "<",
        "Lcom/samsung/android/multiscreen/MultiScreenConfigs;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MultiScreenConfigs"

.field private static mOppositeLaunchAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSamsungHomeLaunchAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSystemResources:Landroid/content/res/Resources;

.field private static sInstance:Lcom/samsung/android/multiscreen/MultiScreenConfigs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/multiscreen/MultiScreenConfigs;

    invoke-direct {v0}, Lcom/samsung/android/multiscreen/MultiScreenConfigs;-><init>()V

    sput-object v0, Lcom/samsung/android/multiscreen/MultiScreenConfigs;->sInstance:Lcom/samsung/android/multiscreen/MultiScreenConfigs;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/multiscreen/MultiScreenConfigs;->mOppositeLaunchAppList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/multiscreen/MultiScreenConfigs;->mSamsungHomeLaunchAppList:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method

.method public static dump(Ljava/lang/String;)V
    .locals 5

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "MULTISCREEN MANAGER configurations (dumpsys multiscreen config)"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/multiscreen/MultiScreenConfigs;
    .locals 1

    sget-object v0, Lcom/samsung/android/multiscreen/MultiScreenConfigs;->sInstance:Lcom/samsung/android/multiscreen/MultiScreenConfigs;

    invoke-virtual {v0}, Lcom/samsung/android/multiscreen/MultiScreenConfigs;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiscreen/MultiScreenConfigs;

    return-object v0
.end method

.method private initConfig()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/multiscreen/MultiScreenConfigs;->loadResourcesConfig()V

    invoke-direct {p0}, Lcom/samsung/android/multiscreen/MultiScreenConfigs;->loadSecProductFeature()V

    invoke-direct {p0}, Lcom/samsung/android/multiscreen/MultiScreenConfigs;->loadCscFeatures()V

    return-void
.end method

.method private loadCscFeatures()V
    .locals 0

    return-void
.end method

.method private loadResourcesConfig()V
    .locals 0

    return-void
.end method

.method private loadSecProductFeature()V
    .locals 0

    return-void
.end method

.method private loadStringArray(ILjava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    sget-object v2, Lcom/samsung/android/multiscreen/MultiScreenConfigs;->mSystemResources:Landroid/content/res/Resources;

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected create()Lcom/samsung/android/multiscreen/MultiScreenConfigs;
    .locals 2

    const-string/jumbo v0, "MultiScreenConfigs"

    const-string/jumbo v1, "MultiScreenConfigs :: create()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/multiscreen/MultiScreenConfigs;->mSystemResources:Landroid/content/res/Resources;

    sget-object v0, Lcom/samsung/android/multiscreen/MultiScreenConfigs;->mSystemResources:Landroid/content/res/Resources;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "System Resources is not ready."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/multiscreen/MultiScreenConfigs;->initConfig()V

    sget-object v0, Lcom/samsung/android/multiscreen/MultiScreenConfigs;->sInstance:Lcom/samsung/android/multiscreen/MultiScreenConfigs;

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/multiscreen/MultiScreenConfigs;->create()Lcom/samsung/android/multiscreen/MultiScreenConfigs;

    move-result-object v0

    return-object v0
.end method
