.class public Lcom/android/settings/dashboard/conditional/ConditionManager;
.super Ljava/lang/Object;
.source "ConditionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dashboard/conditional/ConditionManager$1;,
        Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;,
        Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;
    }
.end annotation


# static fields
.field private static final CONDITION_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/settings/dashboard/conditional/ConditionManager;


# instance fields
.field private final mConditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mXmlFile:Ljava/io/File;


# direct methods
.method static synthetic -get0(Lcom/android/settings/dashboard/conditional/ConditionManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings/dashboard/conditional/ConditionManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings/dashboard/conditional/ConditionManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/settings/dashboard/conditional/ConditionManager;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mXmlFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/settings/dashboard/conditional/ConditionManager;Ljava/io/File;)Ljava/io/File;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mXmlFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/settings/dashboard/conditional/ConditionManager;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addMissingConditions(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/settings/dashboard/conditional/ConditionManager;Ljava/io/File;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/dashboard/conditional/ConditionManager;->readFromXml(Ljava/io/File;Ljava/util/ArrayList;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/dashboard/conditional/ConditionManager$1;

    invoke-direct {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager$1;-><init>()V

    sput-object v0, Lcom/android/settings/dashboard/conditional/ConditionManager;->CONDITION_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mListeners:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    if-eqz p2, :cond_0

    new-instance v0, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;

    invoke-direct {v0, p0, v3}, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;->onPostExecute(Ljava/util/ArrayList;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;

    invoke-direct {v1, p0, v3}, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;)V

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getCondition(Ljava/lang/Class;Ljava/util/List;)Lcom/android/settings/dashboard/conditional/Condition;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->createCondition(Ljava/lang/Class;)Lcom/android/settings/dashboard/conditional/Condition;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private addMissingConditions(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;)V"
        }
    .end annotation

    const-class v0, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    const-class v0, Lcom/android/settings/dashboard/conditional/HotspotCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    const-class v0, Lcom/android/settings/dashboard/conditional/DndCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    const-class v0, Lcom/android/settings/dashboard/conditional/BatterySaverCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    const-class v0, Lcom/android/settings/dashboard/conditional/CellularDataCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    const-class v0, Lcom/android/settings/dashboard/conditional/BackgroundDataCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    const-class v0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->addIfMissing(Ljava/lang/Class;Ljava/util/ArrayList;)V

    sget-object v0, Lcom/android/settings/dashboard/conditional/ConditionManager;->CONDITION_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private createCondition(Ljava/lang/Class;)Lcom/android/settings/dashboard/conditional/Condition;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/android/settings/dashboard/conditional/Condition;"
        }
    .end annotation

    const-class v0, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;

    if-ne v0, p1, :cond_0

    new-instance v0, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/conditional/AirplaneModeCondition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-object v0

    :cond_0
    const-class v0, Lcom/android/settings/dashboard/conditional/HotspotCondition;

    if-ne v0, p1, :cond_1

    new-instance v0, Lcom/android/settings/dashboard/conditional/HotspotCondition;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/conditional/HotspotCondition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-object v0

    :cond_1
    const-class v0, Lcom/android/settings/dashboard/conditional/DndCondition;

    if-ne v0, p1, :cond_2

    new-instance v0, Lcom/android/settings/dashboard/conditional/DndCondition;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/conditional/DndCondition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-object v0

    :cond_2
    const-class v0, Lcom/android/settings/dashboard/conditional/BatterySaverCondition;

    if-ne v0, p1, :cond_3

    new-instance v0, Lcom/android/settings/dashboard/conditional/BatterySaverCondition;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/conditional/BatterySaverCondition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-object v0

    :cond_3
    const-class v0, Lcom/android/settings/dashboard/conditional/CellularDataCondition;

    if-ne v0, p1, :cond_4

    new-instance v0, Lcom/android/settings/dashboard/conditional/CellularDataCondition;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/conditional/CellularDataCondition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-object v0

    :cond_4
    const-class v0, Lcom/android/settings/dashboard/conditional/BackgroundDataCondition;

    if-ne v0, p1, :cond_5

    new-instance v0, Lcom/android/settings/dashboard/conditional/BackgroundDataCondition;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/conditional/BackgroundDataCondition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-object v0

    :cond_5
    const-class v0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;

    if-ne v0, p1, :cond_6

    new-instance v0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;

    invoke-direct {v0, p0}, Lcom/android/settings/dashboard/conditional/WorkModeCondition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unexpected Condition "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static get(Landroid/content/Context;)Lcom/android/settings/dashboard/conditional/ConditionManager;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->get(Landroid/content/Context;Z)Lcom/android/settings/dashboard/conditional/ConditionManager;

    move-result-object v0

    return-object v0
.end method

.method public static get(Landroid/content/Context;Z)Lcom/android/settings/dashboard/conditional/ConditionManager;
    .locals 2

    sget-object v0, Lcom/android/settings/dashboard/conditional/ConditionManager;->sInstance:Lcom/android/settings/dashboard/conditional/ConditionManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/android/settings/dashboard/conditional/ConditionManager;->sInstance:Lcom/android/settings/dashboard/conditional/ConditionManager;

    :cond_0
    sget-object v0, Lcom/android/settings/dashboard/conditional/ConditionManager;->sInstance:Lcom/android/settings/dashboard/conditional/ConditionManager;

    return-object v0
.end method

.method private getCondition(Ljava/lang/Class;Ljava/util/List;)Lcom/android/settings/dashboard/conditional/Condition;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;)TT;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/conditional/Condition;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/conditional/Condition;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/conditional/Condition;

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private readFromXml(Ljava/io/File;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-interface {v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v7

    :goto_0
    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    const-string/jumbo v8, "c"

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    const-string/jumbo v8, ""

    const-string/jumbo v9, "cls"

    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v8, "com.android.settings.dashboard.conditional."

    invoke-virtual {v1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "com.android.settings.dashboard.conditional."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/settings/dashboard/conditional/ConditionManager;->createCondition(Ljava/lang/Class;)Lcom/android/settings/dashboard/conditional/Condition;

    move-result-object v2

    invoke-static {v6}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/settings/dashboard/conditional/Condition;->restoreState(Landroid/os/PersistableBundle;)V

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    if-le v8, v3, :cond_1

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const-string/jumbo v8, "ConditionManager"

    const-string/jumbo v9, "Problem reading condition_state.xml"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void

    :cond_1
    :try_start_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private saveToXml()V
    .locals 9

    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v5

    new-instance v6, Ljava/io/FileWriter;

    iget-object v7, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mXmlFile:Ljava/io/File;

    invoke-direct {v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-interface {v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string/jumbo v7, "UTF-8"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string/jumbo v7, ""

    const-string/jumbo v8, "cs"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v7, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    new-instance v1, Landroid/os/PersistableBundle;

    invoke-direct {v1}, Landroid/os/PersistableBundle;-><init>()V

    iget-object v7, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/dashboard/conditional/Condition;

    invoke-virtual {v7, v1}, Lcom/android/settings/dashboard/conditional/Condition;->saveState(Landroid/os/PersistableBundle;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, ""

    const-string/jumbo v8, "c"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v7, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/dashboard/conditional/Condition;

    invoke-virtual {v7}, Lcom/android/settings/dashboard/conditional/Condition;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v7, ""

    const-string/jumbo v8, "cls"

    invoke-interface {v5, v7, v8, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {v1, v5}, Landroid/os/PersistableBundle;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string/jumbo v7, ""

    const-string/jumbo v8, "c"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v7, ""

    const-string/jumbo v8, "cs"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    invoke-virtual {v6}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v3

    const-string/jumbo v7, "ConditionManager"

    const-string/jumbo v8, "Problem writing condition_state.xml"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public getCondition(Ljava/lang/Class;)Lcom/android/settings/dashboard/conditional/Condition;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getCondition(Ljava/lang/Class;Ljava/util/List;)Lcom/android/settings/dashboard/conditional/Condition;

    move-result-object v0

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public notifyChanged(Lcom/android/settings/dashboard/conditional/Condition;)V
    .locals 4

    invoke-direct {p0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->saveToXml()V

    iget-object v2, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mConditions:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/settings/dashboard/conditional/ConditionManager;->CONDITION_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v2, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/dashboard/conditional/ConditionManager;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;

    invoke-interface {v2}, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionListener;->onConditionsChanged()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
