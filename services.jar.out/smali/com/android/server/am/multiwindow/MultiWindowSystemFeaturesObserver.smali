.class public Lcom/android/server/am/multiwindow/MultiWindowSystemFeaturesObserver;
.super Ljava/lang/Object;
.source "MultiWindowSystemFeaturesObserver.java"

# interfaces
.implements Lcom/android/server/am/multiwindow/MultiWindowFeaturesObserver;


# static fields
.field private static final sSystemFeaturesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSystemFeaturesRepository:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/multiwindow/MultiWindowSystemFeaturesObserver;->sSystemFeaturesRepository:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/multiwindow/MultiWindowSystemFeaturesObserver;->sSystemFeaturesList:Ljava/util/ArrayList;

    sget-object v0, Lcom/android/server/am/multiwindow/MultiWindowSystemFeaturesObserver;->sSystemFeaturesList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.sec.feature.multiwindow.ensure_docked_view"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/multiwindow/MultiWindowSystemFeaturesObserver;->sSystemFeaturesList:Ljava/util/ArrayList;

    const-string/jumbo v1, "android.software.freeform_window_management"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/multiwindow/MultiWindowSystemFeaturesObserver;->sSystemFeaturesList:Ljava/util/ArrayList;

    const-string/jumbo v1, "com.sec.feature.multiwindow.snap_view"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/multiwindow/MultiWindowSystemFeaturesObserver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    sget-object v2, Lcom/android/server/am/multiwindow/MultiWindowSystemFeaturesObserver;->sSystemFeaturesList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/android/server/am/multiwindow/MultiWindowSystemFeaturesObserver;->sSystemFeaturesRepository:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/server/am/multiwindow/MultiWindowSystemFeaturesObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public populateFeatures(Landroid/os/Bundle;I)I
    .locals 4

    sget-object v2, Lcom/android/server/am/multiwindow/MultiWindowSystemFeaturesObserver;->sSystemFeaturesRepository:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    return v2
.end method
