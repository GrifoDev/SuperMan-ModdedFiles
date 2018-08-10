.class public Lcom/android/systemui/qs/bar/QSBarController;
.super Ljava/lang/Object;
.source "QSBarController.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# static fields
.field public static final QUICK_BAR_LIST:Ljava/lang/String; = "quick_setting_bar_list"

.field private static final TAG:Ljava/lang/String; = "QSBarController"


# instance fields
.field private mBarSpecs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBars:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/qs/bar/QSBarItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHeader:Lcom/android/systemui/qs/QuickStatusBarHeader;

.field private mListening:Z

.field private mOnTopBarsHeight:F

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private final mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/bar/QSBarController;)Lcom/android/systemui/qs/QSPanel;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSBarController;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/bar/QSBarController;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/bar/QSBarController;->updateBarOnTopList(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/qs/bar/QSBarController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/bar/QSBarController;->updateOnTopBarsHeight()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/bar/QSBarController;->mBarSpecs:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/bar/QSBarController;->mBars:Ljava/util/LinkedHashMap;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/QSBarController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSBarController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/QSBarController;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "quick_setting_bar_list"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void
.end method

.method private addAllBarItems()V
    .locals 5

    iget-object v3, p0, Lcom/android/systemui/qs/bar/QSBarController;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/bar/QSBarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/bar/QSBarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/QSBarItem;

    iget-object v3, p0, Lcom/android/systemui/qs/bar/QSBarController;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSPanel;->getChildCount()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/qs/bar/QSBarController;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3, v0, v2}, Lcom/android/systemui/qs/QSPanel;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private calculateOnTopBarsHeight()V
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/qs/bar/QSBarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/QSBarItem;

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/QSBarItem;->isOnTop()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/QSBarItem;->getBarHeight()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_1
    int-to-float v3, v2

    iput v3, p0, Lcom/android/systemui/qs/bar/QSBarController;->mOnTopBarsHeight:F

    return-void
.end method

.method private createBarItem(Ljava/lang/String;)Lcom/android/systemui/qs/bar/QSBarItem;
    .locals 9

    const/4 v1, 0x0

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "com.android.systemui.qs.bar."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "Bar"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string/jumbo v6, "QSBarController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "createBar "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/systemui/qs/bar/QSBarController;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/android/systemui/qs/bar/QSBarItem;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v1, :cond_0

    new-instance v6, Lcom/android/systemui/qs/bar/QSBarController$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/bar/QSBarController$1;-><init>(Lcom/android/systemui/qs/bar/QSBarController;)V

    invoke-virtual {v1, v6}, Lcom/android/systemui/qs/bar/QSBarItem;->setCallback(Lcom/android/systemui/qs/bar/QSBarItem$Callback;)V

    iget-object v6, p0, Lcom/android/systemui/qs/bar/QSBarController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1, v6}, Lcom/android/systemui/qs/bar/QSBarItem;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    :cond_0
    return-object v1

    :catch_0
    move-exception v4

    const-string/jumbo v6, "QSBarController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isBarInBarSpecs(Ljava/lang/String;Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    return v4

    :cond_1
    return v5
.end method

.method private loadBarSpecs(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method private removeAllBarItems()V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/qs/bar/QSBarController;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/bar/QSBarController;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanel;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/qs/bar/QSBarController;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2, v0}, Lcom/android/systemui/qs/QSPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/android/systemui/qs/bar/QSBarItem;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/bar/QSBarController;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {v2, v0}, Lcom/android/systemui/qs/QSPanel;->removeViewAt(I)V

    move v0, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private replaceAllBarItems()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/bar/QSBarController;->removeAllBarItems()V

    invoke-direct {p0}, Lcom/android/systemui/qs/bar/QSBarController;->addAllBarItems()V

    return-void
.end method

.method private setQuickBarList()V
    .locals 14

    const/4 v13, 0x0

    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v10, p0, Lcom/android/systemui/qs/bar/QSBarController;->mBarSpecs:Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v10, ":"

    invoke-virtual {v4, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v13, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v10, p0, Lcom/android/systemui/qs/bar/QSBarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/bar/QSBarItem;

    if-nez v1, :cond_1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/bar/QSBarController;->createBarItem(Ljava/lang/String;)Lcom/android/systemui/qs/bar/QSBarItem;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_1
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/QSBarItem;->isAvailable()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v8, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v10, ":"

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v10, v2, v13

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const/4 v10, 0x1

    aget-object v10, v2, v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v3}, Lcom/android/systemui/qs/bar/QSBarItem;->setBarName(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/Boolean;

    invoke-direct {v10, v7}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-virtual {v1, v10}, Lcom/android/systemui/qs/bar/QSBarItem;->setBarOnTop(Z)V

    goto :goto_0

    :catch_0
    move-exception v9

    const-string/jumbo v10, "QSBarController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Error creating tile for spec: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/qs/bar/QSBarItem;->destroy()V

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    iget-object v10, p0, Lcom/android/systemui/qs/bar/QSBarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v10, p0, Lcom/android/systemui/qs/bar/QSBarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v8}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    invoke-direct {p0}, Lcom/android/systemui/qs/bar/QSBarController;->replaceAllBarItems()V

    invoke-direct {p0}, Lcom/android/systemui/qs/bar/QSBarController;->updateOnTopBarsHeight()V

    return-void
.end method

.method private updateBarOnTopList(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 12

    const/4 v8, 0x0

    const-string/jumbo v7, "QSBarController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateBarOnTopList: barName = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", newValue = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-class v7, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v7}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v9, "quick_setting_bar_list"

    invoke-virtual {v7, v9}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    move v7, v8

    :goto_0
    if-ge v7, v10, :cond_1

    aget-object v0, v9, v7

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_0

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v7, ""

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v7, ":"

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ":"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string/jumbo v7, "true"

    :goto_3
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const-string/jumbo v7, "false"

    goto :goto_3

    :cond_4
    const-class v7, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v7}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v8, "quick_setting_bar_list"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateOnTopBarsHeight()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/bar/QSBarController;->calculateOnTopBarsHeight()V

    iget-object v0, p0, Lcom/android/systemui/qs/bar/QSBarController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setQSExpansionHeight()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/qs/bar/QSBarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/QSBarItem;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/qs/bar/QSBarItem;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getOnTopBarsHeight()F
    .locals 1

    iget v0, p0, Lcom/android/systemui/qs/bar/QSBarController;->mOnTopBarsHeight:F

    return v0
.end method

.method public onEmergencyModeChanged()V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/qs/bar/QSBarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/QSBarItem;

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/QSBarItem;->onEmergencyModeChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onExpandingFinished(F)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/qs/bar/QSBarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/QSBarItem;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/bar/QSBarItem;->onExpandingFinished(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onFragmentCreated()V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/qs/bar/QSBarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/QSBarItem;

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/QSBarItem;->onFragmentCreated()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onFragmentDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/bar/QSBarController;->removeAllBarItems()V

    return-void
.end method

.method public onQsClosed()V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/qs/bar/QSBarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/QSBarItem;

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/QSBarItem;->onQsClosed()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onReserveMaxModeChanged()V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/qs/bar/QSBarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/QSBarItem;

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/QSBarItem;->onReserveMaxModeChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onShowingDetail(Z)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/qs/bar/QSBarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/QSBarItem;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/bar/QSBarItem;->onShowingDetail(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const-string/jumbo v5, "quick_setting_bar_list"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    iget-object v5, p0, Lcom/android/systemui/qs/bar/QSBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f1208af

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v5, "QSBarController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "bar specs newValue :  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-class v5, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v5}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/tuner/TunerService;

    const-string/jumbo v6, "quick_setting_bar_list"

    invoke-virtual {v5, v6, p2}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/bar/QSBarController;->loadBarSpecs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iget-object v5, p0, Lcom/android/systemui/qs/bar/QSBarController;->mBarSpecs:Ljava/util/ArrayList;

    invoke-interface {v2, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    return-void

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/qs/bar/QSBarController;->mBarSpecs:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lcom/android/systemui/qs/bar/QSBarController;->mBarSpecs:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string/jumbo v5, "QSBarController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Bar specs :  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/systemui/qs/bar/QSBarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/qs/bar/QSBarController;->mBarSpecs:Ljava/util/ArrayList;

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/qs/bar/QSBarController;->isBarInBarSpecs(Ljava/lang/String;Ljava/util/List;)Z

    move-result v5

    xor-int/lit8 v4, v5, 0x1

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/bar/QSBarItem;

    invoke-virtual {v5}, Lcom/android/systemui/qs/bar/QSBarItem;->destroy()V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/QSBarController;->setQuickBarList()V

    return-void
.end method

.method public setListening(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/QSBarController;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/QSBarController;->mListening:Z

    return-void
.end method

.method public setPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/bar/QSBarController;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-direct {p0}, Lcom/android/systemui/qs/bar/QSBarController;->replaceAllBarItems()V

    invoke-direct {p0}, Lcom/android/systemui/qs/bar/QSBarController;->updateOnTopBarsHeight()V

    return-void
.end method

.method public setPosition(F)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/qs/bar/QSBarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/QSBarItem;

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/QSBarItem;->getAnimator()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/bar/QSBarItem;->setPosition(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateQSBarAvailable()V
    .locals 2

    const-string/jumbo v0, "QSBarController"

    const-string/jumbo v1, "Update Bar\'s Available BY KNOX callback. "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/qs/bar/QSBarController;->setQuickBarList()V

    return-void
.end method
