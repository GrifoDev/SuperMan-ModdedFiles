.class public final enum Lcom/android/launcher2/MenuAppModel;
.super Ljava/lang/Enum;
.source "MenuAppModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/MenuAppModel$Normalizer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher2/MenuAppModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher2/MenuAppModel;

.field private static final BLOCK_DISABLE_METADATA_NAME:Ljava/lang/String; = "com.sec.android.app.blockdisabling"

.field private static final DEBUG:Z

.field public static final enum INSTANCE:Lcom/android/launcher2/MenuAppModel;

.field private static final KNOX_DEFAULT_APP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MENU_ALPHA_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher2/MenuAppModel$Normalizer",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final MENU_CUSTOM_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher2/MenuAppModel$Normalizer",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final MENU_GRID_CHANGE_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher2/MenuAppModel$Normalizer",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final MENU_INSTALL_COMPARATOR_CUSTOM:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MenuAppModel"

.field private static final UNBLOCK_DISABLE_METADATA_NAME:Ljava/lang/String; = "com.sec.android.app.unblockdisabling"

.field public static mDisableItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mNonDisableItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sCollator:Ljava/text/Collator;


# instance fields
.field private mAppItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mApplication:Lcom/android/launcher2/LauncherApplication;

.field private mAvailableWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;"
        }
    .end annotation
.end field

.field private mCanUninstallApps:Z

.field private mEDMBlockDisableAllList:Z

.field private mEDMBlockDisableContainList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEDMBlockDisablePackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderToDelete:Lcom/android/launcher2/AppFolderItem;

.field private mFoldersAdded:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppFolderItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFoldersRemoved:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppFolderItem;",
            ">;"
        }
    .end annotation
.end field

.field private mFrontApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHasHiddenItems:Z

.field private mInEditMode:Z

.field private mIsFinishFrontAppsLoader:Z

.field private mIsSafeMode:Z

.field private mMaxItemsPerPage:I

.field private mNormalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher2/MenuAppModel$Normalizer",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSuspendGets:Z

.field private mTopLevelItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/launcher2/MenuAppModel;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/MenuAppModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    new-array v0, v3, [Lcom/android/launcher2/MenuAppModel;

    sget-object v1, Lcom/android/launcher2/MenuAppModel;->INSTANCE:Lcom/android/launcher2/MenuAppModel;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/launcher2/MenuAppModel;->$VALUES:[Lcom/android/launcher2/MenuAppModel;

    invoke-static {}, Lcom/android/launcher2/Utilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher2/MenuAppModel;->DEBUG:Z

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppModel;->sCollator:Ljava/text/Collator;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.sec.knox.shortcutsms"

    aput-object v1, v0, v2

    const-string v1, "com.sec.knox.containeragent2"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "com.sec.knox.switcher"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppModel;->KNOX_DEFAULT_APP:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/MenuAppModel;->mNonDisableItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher2/MenuAppModel;->mDisableItems:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/launcher2/MenuAppModel$1;

    invoke-direct {v0}, Lcom/android/launcher2/MenuAppModel$1;-><init>()V

    sput-object v0, Lcom/android/launcher2/MenuAppModel;->MENU_CUSTOM_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;

    new-instance v0, Lcom/android/launcher2/MenuAppModel$2;

    invoke-direct {v0}, Lcom/android/launcher2/MenuAppModel$2;-><init>()V

    sput-object v0, Lcom/android/launcher2/MenuAppModel;->MENU_ALPHA_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;

    new-instance v0, Lcom/android/launcher2/MenuAppModel$3;

    invoke-direct {v0}, Lcom/android/launcher2/MenuAppModel$3;-><init>()V

    sput-object v0, Lcom/android/launcher2/MenuAppModel;->MENU_INSTALL_COMPARATOR_CUSTOM:Ljava/util/Comparator;

    new-instance v0, Lcom/android/launcher2/MenuAppModel$4;

    invoke-direct {v0}, Lcom/android/launcher2/MenuAppModel$4;-><init>()V

    sput-object v0, Lcom/android/launcher2/MenuAppModel;->MENU_GRID_CHANGE_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean v1, p0, Lcom/android/launcher2/MenuAppModel;->mIsSafeMode:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mAvailableWidgets:Ljava/util/List;

    iput-boolean v1, p0, Lcom/android/launcher2/MenuAppModel;->mEDMBlockDisableAllList:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mEDMBlockDisableContainList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mEDMBlockDisablePackageList:Ljava/util/List;

    iput-boolean v1, p0, Lcom/android/launcher2/MenuAppModel;->mIsFinishFrontAppsLoader:Z

    return-void
.end method

.method static synthetic access$000(II)I
    .locals 1

    invoke-static {p0, p1}, Lcom/android/launcher2/MenuAppModel;->integerCompare(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$100()Ljava/text/Collator;
    .locals 1

    sget-object v0, Lcom/android/launcher2/MenuAppModel;->sCollator:Ljava/text/Collator;

    return-object v0
.end method

.method static synthetic access$200(JJ)I
    .locals 2

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher2/MenuAppModel;->longCompare(JJ)I

    move-result v0

    return v0
.end method

.method private addNonDisableAppToListFromCSC()V
    .locals 13

    const/4 v12, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v8, "/system/csc/default_disableapp_skiplist.xml"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_2

    new-instance v1, Ljava/io/FileReader;

    const-string v8, "/system/csc/default_disableapp_skiplist.xml"

    invoke-direct {v1, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    invoke-interface {v6, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    :goto_0
    if-eq v4, v12, :cond_1

    const/4 v8, 0x4

    if-ne v4, v8, :cond_0

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/android/launcher2/MenuAppModel;->mNonDisableItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    sget-object v8, Lcom/android/launcher2/MenuAppModel;->mNonDisableItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v8, Lcom/android/launcher2/MenuAppModel;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "MenuAppModel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "add disable from csc:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    goto :goto_0

    :cond_1
    move-object v0, v1

    :cond_2
    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v3

    const-string v8, "MenuAppModel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addNonDisableAppToListFromCSC:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v3

    :goto_2
    :try_start_3
    const-string v8, "MenuAppModel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addNonDisableAppToListFromCSC:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_3

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v3

    const-string v8, "MenuAppModel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addNonDisableAppToListFromCSC:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_3
    move-exception v3

    :goto_3
    :try_start_5
    const-string v8, "MenuAppModel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addNonDisableAppToListFromCSC:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_3

    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v3

    const-string v8, "MenuAppModel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "addNonDisableAppToListFromCSC:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v0, :cond_4

    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :cond_4
    :goto_5
    throw v8

    :catch_5
    move-exception v3

    const-string v9, "MenuAppModel"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addNonDisableAppToListFromCSC:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catchall_1
    move-exception v8

    move-object v0, v1

    goto :goto_4

    :catch_6
    move-exception v3

    move-object v0, v1

    goto :goto_3

    :catch_7
    move-exception v3

    move-object v0, v1

    goto/16 :goto_2
.end method

.method private addNonDisableAppToListFromSettingsCSC()V
    .locals 8

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Setting_ConfigForbidAppDisableButton"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Setting_ConfigForbidAppDisableButton"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "MenuAppModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disablAppList : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/util/SemLog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    sget-object v5, Lcom/android/launcher2/MenuAppModel;->mNonDisableItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/android/launcher2/MenuAppModel;->mNonDisableItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v5, Lcom/android/launcher2/MenuAppModel;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "MenuAppModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add disable from csc:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private addNonDisableAppToListFromXML()V
    .locals 9

    const-string v0, "nondisableapps"

    const/4 v5, 0x0

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v6}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07000c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    if-eqz v5, :cond_2

    :try_start_0
    const-string v6, "nondisableapps"

    invoke-static {v5, v6}, Lcom/android/launcher2/LauncherProvider;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    move-object v3, v5

    :try_start_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    :goto_1
    const/4 v6, 0x1

    if-eq v2, v6, :cond_1

    const/4 v6, 0x4

    if-ne v2, v6, :cond_0

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    sget-object v6, Lcom/android/launcher2/MenuAppModel;->mNonDisableItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lcom/android/launcher2/MenuAppModel;->mNonDisableItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v6, Lcom/android/launcher2/MenuAppModel;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "MenuAppModel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add disable from xml:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v2

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v6, "MenuAppModel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addNonDisableAppToListFromXML:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v6, "MenuAppModel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addNonDisableAppToListFromXML:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v6, "MenuAppModel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addNonDisableAppToListFromXML:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    return-void

    :catch_3
    move-exception v1

    const-string v6, "MenuAppModel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addNonDisableAppToListFromXML:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const-string v6, "MenuAppModel"

    const-string v7, "addNonDisableAppToList resParser is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private checkEditMode(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Method requires mInEditMode to be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private getHomePackageList()V
    .locals 13

    iget-object v10, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v10}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    if-eqz v7, :cond_3

    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "android.intent.category.HOME"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const v10, 0x10040

    invoke-virtual {v7, v4, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v9, :cond_4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    iget-object v0, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v10, v10, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v10, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v10, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_0

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sget-object v10, Lcom/android/launcher2/MenuAppModel;->mNonDisableItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v10, Lcom/android/launcher2/MenuAppModel;->DEBUG:Z

    if-eqz v10, :cond_2

    const-string v10, "MenuAppModel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "add disable Home package:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_0

    const-string v10, "android.app.home.alternate"

    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v7, v5, v1}, Lcom/android/launcher2/MenuAppModel;->signaturesMatch(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    sget-object v10, Lcom/android/launcher2/MenuAppModel;->mNonDisableItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v10, Lcom/android/launcher2/MenuAppModel;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "MenuAppModel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "add disable Home package:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v10, "MenuAppModel"

    const-string v11, "getHomePackageList PackageManager is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method private static integerCompare(II)I
    .locals 1

    const/4 v0, 0x0

    if-le p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ge p0, p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method private isDisableFromSetting(Ljava/lang/String;)Z
    .locals 7

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Setting_ConfigForbidAppDisableButton"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Setting_ConfigForbidAppDisableButton"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v5, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v3, v0, v4

    if-eqz p1, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private isKnoxDefaultShortcutApp(Lcom/android/launcher2/BaseItem;)Z
    .locals 3

    sget-object v0, Lcom/android/launcher2/MenuAppModel;->KNOX_DEFAULT_APP:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MenuAppModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "item.getPackageName() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher2/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSystemSignature(Lcom/android/launcher2/AppItem;)Z
    .locals 10

    const/4 v6, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v7}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_1

    const-string v7, "com.sec.android.app.unblockdisabling"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    sget-boolean v7, Lcom/android/launcher2/MenuAppModel;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "MenuAppModel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unblocked : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p1}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x40

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    const-string v7, "android"

    const/16 v8, 0x40

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v3, :cond_0

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v7, :cond_0

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    iget-object v8, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const-string v7, "MenuAppModel"

    const-string v8, "isSystemSignature pkgmgr null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private static longCompare(JJ)I
    .locals 2

    const/4 v0, 0x0

    cmp-long v1, p0, p2

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    cmp-long v1, p0, p2

    if-gez v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method private makeDisableAppListFromMeta()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v13}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    if-eqz v8, :cond_8

    new-instance v6, Landroid/content/Intent;

    const-string v13, "android.intent.action.MAIN"

    const/4 v14, 0x0

    invoke-direct {v6, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v13, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v13}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v13, 0x0

    invoke-virtual {v8, v6, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    const/4 v10, 0x0

    :try_start_0
    const-string v13, "android"

    const/16 v14, 0x40

    invoke-virtual {v8, v13, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-object v13, v11, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v13, :cond_0

    iget-object v13, v11, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v14, 0x0

    aget-object v10, v13, v14
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_1
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    if-eqz v9, :cond_1

    const/4 v4, 0x0

    :try_start_1
    iget-object v14, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v15, 0x80

    invoke-virtual {v8, v14, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    :goto_2
    if-eqz v4, :cond_1

    const/4 v7, 0x0

    iget-object v7, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v12, 0x0

    const/4 v2, 0x0

    if-eqz v7, :cond_2

    iget-object v14, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v14, :cond_2

    const-string v14, "com.sec.android.app.unblockdisabling"

    invoke-virtual {v7, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    const-string v14, "com.sec.android.app.blockdisabling"

    invoke-virtual {v7, v14}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :cond_2
    sget-object v14, Lcom/android/launcher2/MenuAppModel;->mNonDisableItems:Ljava/util/ArrayList;

    iget-object v15, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    if-eqz v2, :cond_4

    sget-object v14, Lcom/android/launcher2/MenuAppModel;->mNonDisableItems:Ljava/util/ArrayList;

    iget-object v15, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v14, Lcom/android/launcher2/MenuAppModel;->DEBUG:Z

    if-eqz v14, :cond_1

    const-string v14, "MenuAppModel"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", block option : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v3

    sget-boolean v13, Lcom/android/launcher2/MenuAppModel;->DEBUG:Z

    if-eqz v13, :cond_3

    const-string v13, "MenuAppModel"

    const-string v14, "Can\'t get the android package information "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v13, "MenuAppModel"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "makeDisableAppListFromMeta:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v3

    const-string v14, "MenuAppModel"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to read meta data:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_4
    if-eqz v12, :cond_5

    sget-object v14, Lcom/android/launcher2/MenuAppModel;->mDisableItems:Ljava/util/ArrayList;

    iget-object v15, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    sget-object v14, Lcom/android/launcher2/MenuAppModel;->mDisableItems:Ljava/util/ArrayList;

    iget-object v15, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v14, Lcom/android/launcher2/MenuAppModel;->DEBUG:Z

    if-eqz v14, :cond_1

    const-string v14, "MenuAppModel"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", Unblock option : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_5
    :try_start_2
    iget-object v14, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v15, 0x40

    invoke-virtual {v8, v14, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v5, :cond_6

    iget-object v14, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v14, :cond_6

    if-eqz v10, :cond_6

    iget-object v14, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    invoke-virtual {v10, v14}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    :cond_6
    sget-object v14, Lcom/android/launcher2/MenuAppModel;->mDisableItems:Ljava/util/ArrayList;

    iget-object v15, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    sget-object v14, Lcom/android/launcher2/MenuAppModel;->mDisableItems:Ljava/util/ArrayList;

    iget-object v15, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v14, Lcom/android/launcher2/MenuAppModel;->DEBUG:Z

    if-eqz v14, :cond_1

    const-string v14, "MenuAppModel"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " can be disabled."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    :catch_2
    move-exception v3

    sget-boolean v14, Lcom/android/launcher2/MenuAppModel;->DEBUG:Z

    if-eqz v14, :cond_7

    const-string v14, "MenuAppModel"

    const-string v15, "Can\'t get the package information"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const-string v14, "MenuAppModel"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "makeDisableAppListFromMeta:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_8
    return-void
.end method

.method private setModelFlags()V
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/MenuAppModel;->mCanUninstallApps:Z

    iput-boolean v1, p0, Lcom/android/launcher2/MenuAppModel;->mHasHiddenItems:Z

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    iget-boolean v2, v0, Lcom/android/launcher2/AppItem;->mHidden:Z

    if-eqz v2, :cond_3

    iput-boolean v4, p0, Lcom/android/launcher2/MenuAppModel;->mHasHiddenItems:Z

    :cond_1
    :goto_0
    iget-boolean v2, p0, Lcom/android/launcher2/MenuAppModel;->mCanUninstallApps:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher2/MenuAppModel;->mHasHiddenItems:Z

    if-eqz v2, :cond_0

    :cond_2
    return-void

    :cond_3
    iget-boolean v2, v0, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v3, :cond_1

    iput-boolean v4, p0, Lcom/android/launcher2/MenuAppModel;->mCanUninstallApps:Z

    goto :goto_0
.end method

.method private signaturesMatch(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher2/MenuAppModel;
    .locals 1

    const-class v0, Lcom/android/launcher2/MenuAppModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/MenuAppModel;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher2/MenuAppModel;
    .locals 1

    sget-object v0, Lcom/android/launcher2/MenuAppModel;->$VALUES:[Lcom/android/launcher2/MenuAppModel;

    invoke-virtual {v0}, [Lcom/android/launcher2/MenuAppModel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher2/MenuAppModel;

    return-object v0
.end method


# virtual methods
.method public addItemToFolder(Lcom/android/launcher2/AppItem;J)Z
    .locals 8

    const/4 v3, 0x1

    const-string v4, "MenuAppModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addItemToFolder ::  folderId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0x0

    cmp-long v4, p2, v4

    if-ltz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->getAppItems()Ljava/util/Map;

    move-result-object v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    if-eqz v0, :cond_1

    const-string v4, "MenuAppModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addItemToFolder :: folderItem is not null. folderItem : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/launcher2/AppFolderItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " item : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p1}, Lcom/android/launcher2/AppFolderItem;->addItem(Lcom/android/launcher2/BaseItem;)V

    iput-object v0, p1, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    new-instance v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v2}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    const/4 v4, 0x4

    iput v4, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    iput-wide p2, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    iget-boolean v4, p1, Lcom/android/launcher2/AppItem;->mHidden:Z

    iput-boolean v4, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    iget-wide v4, p1, Lcom/android/launcher2/AppItem;->mId:J

    iput-wide v4, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    iget v4, p1, Lcom/android/launcher2/AppItem;->mScreen:I

    iput v4, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    iget-object v4, p1, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    iget-wide v4, p1, Lcom/android/launcher2/AppItem;->mId:J

    iput-wide v4, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    iget-object v4, p1, Lcom/android/launcher2/AppItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    iput-object v4, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    sget-boolean v4, Lcom/android/launcher2/MenuAppModel;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "MenuAppModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addItemtoFolder :: ADDED:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v3

    :cond_1
    const-string v3, "MenuAppModel"

    const-string v4, "addItemToFolder :: folderItem is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public appsAddedOrRemoved(Ljava/util/List;Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v11, :cond_10

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-eqz p2, :cond_8

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_8

    const/4 v6, 0x0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/AppItem;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    iget-wide v14, v7, Lcom/android/launcher2/AppItem;->mId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_0

    iget-object v12, v7, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v12, :cond_1

    iget-object v4, v7, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iget-object v12, v7, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/android/launcher2/AppFolderItem;->setToRedrawIcons(Z)V

    :cond_1
    const/4 v5, 0x1

    invoke-virtual {v7}, Lcom/android/launcher2/AppItem;->destroy()V

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/launcher2/AppFolderItem;->getItemCount()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_4

    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Lcom/android/launcher2/AppFolderItem;->getItemAt(I)Lcom/android/launcher2/BaseItem;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/AppItem;

    invoke-virtual {v8}, Lcom/android/launcher2/AppItem;->removeFromFolder()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher2/MenuAppModel;->setFolderToDelete(Lcom/android/launcher2/AppFolderItem;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppModel;->editRemoveFolder()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v2}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    const/4 v12, 0x5

    iput v12, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    iget-wide v12, v4, Lcom/android/launcher2/AppFolderItem;->mId:J

    iput-wide v12, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v12

    iput-object v12, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v12

    invoke-static {v12, v3}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    :cond_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v9}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    const/4 v12, 0x4

    iput v12, v9, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    iget-wide v12, v8, Lcom/android/launcher2/AppItem;->mId:J

    iput-wide v12, v9, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    const-wide/16 v12, -0x1

    iput-wide v12, v9, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    iget v12, v8, Lcom/android/launcher2/AppItem;->mScreen:I

    iput v12, v9, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    iget v12, v8, Lcom/android/launcher2/AppItem;->mCell:I

    iput v12, v9, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v12

    iput-object v12, v9, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_3

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v12

    invoke-static {v12, v10}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    :cond_3
    const/4 v12, 0x1

    invoke-static {v12}, Lcom/android/launcher2/MenuView;->setNeedtoCloseFolder(Z)V

    :goto_1
    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/android/launcher2/AppFolderItem;->getItemCount()I

    move-result v12

    if-nez v12, :cond_5

    const/4 v12, 0x1

    invoke-static {v12}, Lcom/android/launcher2/MenuView;->setNeedtoCloseFolder(Z)V

    goto :goto_1

    :cond_5
    const/4 v12, 0x0

    invoke-static {v12}, Lcom/android/launcher2/MenuView;->setNeedtoCloseFolder(Z)V

    goto :goto_1

    :cond_6
    if-nez v6, :cond_7

    const-string v11, "MenuAppModel"

    const-string v12, "there is no item to remove inmAppItems "

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/MenuAppModel;->setModelFlags()V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportSprintExtension()Z

    move-result v11

    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v11}, Lcom/android/launcher2/AppFolderingSpr;->getInstance(Lcom/android/launcher2/LauncherApplication;)Lcom/android/launcher2/AppFolderingSpr;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Lcom/android/launcher2/AppFolderingSpr;->removePackagesInSprintfolder(Ljava/util/List;)V

    :cond_8
    if-eqz p1, :cond_f

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_f

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_9
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/AppItem;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    iget-wide v14, v7, Lcom/android/launcher2/AppItem;->mId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v12, v13, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v12, v7, Lcom/android/launcher2/AppItem;->mHidden:Z

    if-eqz v12, :cond_a

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/MenuAppModel;->mHasHiddenItems:Z

    goto :goto_2

    :cond_a
    iget-boolean v12, v7, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-nez v12, :cond_b

    iget-object v12, v7, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v13, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v12, v13, :cond_b

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher2/MenuAppModel;->mCanUninstallApps:Z

    :cond_b
    iget-object v12, v7, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-nez v12, :cond_c

    const/4 v5, 0x1

    :cond_c
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportSprintExtension()Z

    move-result v12

    if-eqz v12, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v12}, Lcom/android/launcher2/AppFolderingSpr;->getInstance(Lcom/android/launcher2/LauncherApplication;)Lcom/android/launcher2/AppFolderingSpr;

    move-result-object v12

    invoke-virtual {v12, v7}, Lcom/android/launcher2/AppFolderingSpr;->checkAndAddAppItemToSprintFolder(Lcom/android/launcher2/AppItem;)V

    :cond_d
    invoke-static {}, Lcom/android/launcher2/customer/TMO;->getInstance()Lcom/android/launcher2/customer/TMO;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher2/customer/TMO;->supportHomeFolderAdapt()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-static {}, Lcom/android/launcher2/customer/TMO;->getInstance()Lcom/android/launcher2/customer/TMO;

    move-result-object v12

    invoke-virtual {v12, v7}, Lcom/android/launcher2/customer/TMO;->checkAndAddAppItemToTmobileFolder(Lcom/android/launcher2/AppItem;)V

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    if-eqz v12, :cond_9

    invoke-virtual {v7}, Lcom/android/launcher2/AppItem;->editBegin()V

    goto :goto_2

    :cond_f
    if-eqz v5, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    :cond_10
    return-void
.end method

.method appsUpdated(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    iget-object v2, v0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher2/AppFolderItem;->setToRedrawIcons(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public canDisable(Lcom/android/launcher2/AppItem;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/launcher2/AppItem;

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/Launcher;->isSystemAppDisable:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/android/launcher2/MenuAppModel;->mDisableItems:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canDisableable(Lcom/android/launcher2/AppItem;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/launcher2/AppItem;

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppModel;->isNonDisableItem(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/Launcher;->isSystemAppDisable:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppModel;->isSystemSignature(Lcom/android/launcher2/AppItem;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppModel;->isBlockUninstall(Lcom/android/launcher2/AppItem;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canDisableable2(Lcom/android/launcher2/AppItem;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/launcher2/AppItem;

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppModel;->isNonDisableItem(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/launcher2/Launcher;->isSystemAppDisable:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppModel;->isSystemSignature(Lcom/android/launcher2/AppItem;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canRemovable(Lcom/android/launcher2/AppItem;)Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->createSkiplistByMetadata()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppModel;->isBlockUninstall(Lcom/android/launcher2/AppItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppModel;->canDisable(Lcom/android/launcher2/AppItem;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/launcher2/MenuAppModel;->isNonDisableItem(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppModel;->canUninstallable2(Lcom/android/launcher2/AppItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppModel;->isBlockUninstall(Lcom/android/launcher2/AppItem;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppModel;->canUninstallable2(Lcom/android/launcher2/AppItem;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppModel;->canDisableable2(Lcom/android/launcher2/AppItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public canUninstallApps()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppModel;->mSuspendGets:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppModel;->mCanUninstallApps:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canUninstallable(Lcom/android/launcher2/AppItem;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/launcher2/AppItem;

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppModel;->isKnoxDefaultShortcutApp(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppModel;->isBlockUninstall(Lcom/android/launcher2/AppItem;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canUninstallable2(Lcom/android/launcher2/AppItem;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/launcher2/AppItem;

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v1, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppModel;->isKnoxDefaultShortcutApp(Lcom/android/launcher2/BaseItem;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/AppItem;->isPromise()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher2/MenuAppModel;->isDisableFromSetting(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public changeFolderColor(Lcom/android/launcher2/AppFolderItem;)V
    .locals 6

    iget-wide v2, p1, Lcom/android/launcher2/AppFolderItem;->mId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    new-instance v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v1}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    const/4 v2, 0x6

    iput v2, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    iget-wide v2, p1, Lcom/android/launcher2/AppFolderItem;->mId:J

    iput-wide v2, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    iget v2, p1, Lcom/android/launcher2/AppFolderItem;->mColor:I

    iput v2, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->color:I

    iget-object v2, p1, Lcom/android/launcher2/AppFolderItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    iput-object v2, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v2, v0}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public changeFolderName(Lcom/android/launcher2/AppFolderItem;)V
    .locals 6

    iget-wide v2, p1, Lcom/android/launcher2/AppFolderItem;->mId:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    new-instance v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v1}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    const/4 v2, 0x2

    iput v2, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    iget-wide v2, p1, Lcom/android/launcher2/AppFolderItem;->mId:J

    iput-wide v2, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    iget-object v2, p1, Lcom/android/launcher2/AppFolderItem;->mTitle:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/launcher2/AppFolderItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    iput-object v2, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v2, v0}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public editAddFolder()Lcom/android/launcher2/AppFolderItem;
    .locals 6

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/launcher2/MenuAppModel;->checkEditMode(Z)V

    new-instance v0, Lcom/android/launcher2/AppFolderItem;

    invoke-direct {v0}, Lcom/android/launcher2/AppFolderItem;-><init>()V

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/PkgResCache;->getFolderIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher2/AppFolderItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherProvider;->generateNewMenuId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/launcher2/AppFolderItem;->mId:J

    :cond_0
    iput-boolean v4, v0, Lcom/android/launcher2/AppFolderItem;->mDirty:Z

    invoke-virtual {v0}, Lcom/android/launcher2/AppFolderItem;->editBegin()V

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    iget-wide v4, v0, Lcom/android/launcher2/AppFolderItem;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    return-object v0
.end method

.method public editAddFolderForPostPosition()Lcom/android/launcher2/AppFolderItem;
    .locals 6

    new-instance v0, Lcom/android/launcher2/AppFolderItem;

    invoke-direct {v0}, Lcom/android/launcher2/AppFolderItem;-><init>()V

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/PkgResCache;->getFolderIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher2/AppFolderItem;->mIconBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v2}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherProvider;->generateNewMenuId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/launcher2/AppFolderItem;->mId:J

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/launcher2/AppFolderItem;->mDirty:Z

    invoke-virtual {v0}, Lcom/android/launcher2/AppFolderItem;->editBegin()V

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    iget-wide v4, v0, Lcom/android/launcher2/AppFolderItem;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    return-object v0
.end method

.method public editBegin()V
    .locals 5

    const-string v2, "MenuAppModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "editBegin:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    invoke-virtual {v0}, Lcom/android/launcher2/AppItem;->editBegin()V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mFolderToDelete:Lcom/android/launcher2/AppFolderItem;

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    :cond_2
    return-void
.end method

.method public editCommit()V
    .locals 14

    const-string v1, "MenuAppModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "editCommit:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/MenuAppModel;->mHasHiddenItems:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/MenuAppModel;->mCanUninstallApps:Z

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/AppItem;

    invoke-virtual {v9}, Lcom/android/launcher2/AppItem;->editCommit()V

    iget-boolean v1, v9, Lcom/android/launcher2/AppItem;->mHidden:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/MenuAppModel;->mHasHiddenItems:Z

    goto :goto_0

    :cond_1
    iget-boolean v1, v9, Lcom/android/launcher2/AppItem;->mSystemApp:Z

    if-nez v1, :cond_0

    iget-object v1, v9, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v2, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/MenuAppModel;->mCanUninstallApps:Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/MenuAppModel;->normalizeModel(Z)V

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    new-instance v11, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v11}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    const/4 v2, 0x0

    iput v2, v11, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    iget-wide v2, v0, Lcom/android/launcher2/AppFolderItem;->mId:J

    iput-wide v2, v11, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    iget v2, v0, Lcom/android/launcher2/AppFolderItem;->mScreen:I

    iput v2, v11, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    iget v2, v0, Lcom/android/launcher2/AppFolderItem;->mCell:I

    iput v2, v11, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    iget-object v2, v0, Lcom/android/launcher2/AppFolderItem;->mTitle:Ljava/lang/String;

    iput-object v2, v11, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    iget v2, v0, Lcom/android/launcher2/AppFolderItem;->mColor:I

    iput v2, v11, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->color:I

    iget-object v2, v0, Lcom/android/launcher2/AppFolderItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    iput-object v2, v11, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/launcher2/AppFolderItem;->mDirty:Z

    goto :goto_1

    :cond_3
    const/4 v8, 0x1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/AppItem;

    iget-boolean v2, v9, Lcom/android/launcher2/AppItem;->mDirty:Z

    if-eqz v2, :cond_5

    new-instance v11, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v11}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    iget-object v2, v9, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v3, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v2, v3, :cond_6

    const/4 v2, 0x1

    iput v2, v11, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    :goto_3
    iget-wide v2, v9, Lcom/android/launcher2/AppItem;->mId:J

    iput-wide v2, v11, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    iget v2, v9, Lcom/android/launcher2/AppItem;->mScreen:I

    iput v2, v11, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    iget v2, v9, Lcom/android/launcher2/AppItem;->mCell:I

    iput v2, v11, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    iget-object v2, v9, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    iput-object v2, v11, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    iget-object v2, v9, Lcom/android/launcher2/AppItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    iput-object v2, v11, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    iput-boolean v2, v9, Lcom/android/launcher2/AppItem;->mDirty:Z

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportSprintExtension()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v2}, Lcom/android/launcher2/AppFolderingSpr;->getInstance(Lcom/android/launcher2/LauncherApplication;)Lcom/android/launcher2/AppFolderingSpr;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/android/launcher2/AppFolderingSpr;->tryToUpdateFolderList(Lcom/android/launcher2/AppItem;)V

    goto :goto_2

    :cond_6
    const/4 v2, 0x4

    iput v2, v11, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    iget-object v2, v9, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v2, :cond_7

    iget-object v2, v9, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iget-wide v2, v2, Lcom/android/launcher2/AppFolderItem;->mId:J

    :goto_4
    iput-wide v2, v11, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    iget-boolean v2, v9, Lcom/android/launcher2/AppItem;->mHidden:Z

    iput-boolean v2, v11, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    goto :goto_3

    :cond_7
    const-wide/16 v2, -0x1

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/launcher2/AppFolderItem;->destroy()V

    new-instance v11, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v11}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    const/4 v2, 0x5

    iput v2, v11, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    iget-wide v2, v0, Lcom/android/launcher2/AppFolderItem;->mId:J

    iput-wide v2, v11, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    iget-object v2, v0, Lcom/android/launcher2/AppFolderItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    iput-object v2, v11, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    const/4 v8, 0x1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "DTAF"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_b
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFolderToDelete:Lcom/android/launcher2/AppFolderItem;

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v1, v12}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    :cond_c
    if-eqz v8, :cond_d

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/launcher2/Logging;->getItemCount(Landroid/app/Activity;ZZ)I

    move-result v7

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "APFO"

    const/4 v3, 0x0

    int-to-long v4, v7

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/launcher2/Logging;->getFolderNameValue(Landroid/app/Activity;Z)I

    move-result v13

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v1

    const-string v2, "APFN"

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/android/launcher2/Logging;->insertLog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_d
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    :cond_e
    return-void
.end method

.method public editIsDirty(Z)Z
    .locals 4

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/launcher2/MenuAppModel;->checkEditMode(Z)V

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_1
    :goto_0
    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/AppItem;->editIsDirty(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    :cond_3
    return v1

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public editRemoveFolder()V
    .locals 9

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mFolderToDelete:Lcom/android/launcher2/AppFolderItem;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    iget-wide v4, v0, Lcom/android/launcher2/AppFolderItem;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_3

    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown folder or folder already removed"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-nez v0, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " , "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-nez v5, :cond_2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/android/launcher2/AppFolderItem;->destroy()V

    :goto_2
    iput-object v8, p0, Lcom/android/launcher2/MenuAppModel;->mFolderToDelete:Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportSprintExtension()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-wide v4, v0, Lcom/android/launcher2/AppFolderItem;->mId:J

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v1}, Lcom/android/launcher2/AppFolderingSpr;->getInstance(Lcom/android/launcher2/LauncherApplication;)Lcom/android/launcher2/AppFolderingSpr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/AppFolderingSpr;->getSprintFolderID()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-nez v1, :cond_5

    sget-boolean v1, Lcom/android/launcher2/MenuAppModel;->DEBUG:Z

    if-eqz v1, :cond_4

    const-string v1, "MenuAppModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "editRemoveFolder : removed id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/android/launcher2/AppFolderItem;->mId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v1}, Lcom/android/launcher2/AppFolderingSpr;->getInstance(Lcom/android/launcher2/LauncherApplication;)Lcom/android/launcher2/AppFolderingSpr;

    move-result-object v1

    invoke-virtual {v1, v8, v2}, Lcom/android/launcher2/AppFolderingSpr;->updateSprintFolderPackages(Ljava/util/Set;Z)V

    :cond_5
    invoke-static {}, Lcom/android/launcher2/customer/TMO;->getInstance()Lcom/android/launcher2/customer/TMO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/customer/TMO;->supportHomeFolderAdapt()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "MenuAppModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeFolder:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v0, Lcom/android/launcher2/AppFolderItem;->mId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher2/customer/TMO;->getInstance()Lcom/android/launcher2/customer/TMO;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/launcher2/AppFolderItem;->mId:J

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/customer/TMO;->disableAppsFolderAdapt(J)V

    :cond_6
    invoke-static {}, Lcom/android/launcher2/customer/PostPosition;->getInstance()Lcom/android/launcher2/customer/PostPosition;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/customer/PostPosition;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/android/launcher2/customer/PostPosition;->getInstance()Lcom/android/launcher2/customer/PostPosition;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/customer/PostPosition$CONTAINER;->APPS:Lcom/android/launcher2/customer/PostPosition$CONTAINER;

    iget-wide v4, v0, Lcom/android/launcher2/AppFolderItem;->mId:J

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/launcher2/customer/PostPosition;->deleteFolder(Lcom/android/launcher2/customer/PostPosition$CONTAINER;J)V

    :cond_7
    return-void

    :cond_8
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    if-nez v1, :cond_9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    :cond_9
    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/android/launcher2/AppFolderItem;->editDestroy()V

    goto/16 :goto_2
.end method

.method public editRevert()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-boolean v2, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    iget-wide v4, v0, Lcom/android/launcher2/AppFolderItem;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object v6, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersAdded:Ljava/util/List;

    :cond_1
    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppFolderItem;

    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    iget-wide v4, v0, Lcom/android/launcher2/AppFolderItem;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iput-object v6, p0, Lcom/android/launcher2/MenuAppModel;->mFoldersRemoved:Ljava/util/List;

    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppItem;

    invoke-virtual {v1}, Lcom/android/launcher2/AppItem;->editRevert()V

    goto :goto_2

    :cond_4
    iput-object v6, p0, Lcom/android/launcher2/MenuAppModel;->mFolderToDelete:Lcom/android/launcher2/AppFolderItem;

    invoke-virtual {p0, v7}, Lcom/android/launcher2/MenuAppModel;->normalizeModel(Z)V

    :cond_5
    iput-boolean v7, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    :cond_6
    return-void
.end method

.method public findItemByCompoName(Landroid/content/ComponentName;)Lcom/android/launcher2/AppItem;
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public findItemById(J)Lcom/android/launcher2/AppItem;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    :cond_0
    return-object v0
.end method

.method public getAppItems()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    return-object v0
.end method

.method public getAvailableWidgets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AvailableWidget;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mAvailableWidgets:Ljava/util/List;

    return-object v0
.end method

.method public getCurrentComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mNormalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mNormalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/launcher2/MenuAppModel;->MENU_CUSTOM_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;

    goto :goto_0
.end method

.method public getEnterprisePolicyBlockUninstallList()V
    .locals 10

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v9, 0x0

    const-string v0, "content://com.sec.knox.provider2/ApplicationPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/String;

    const-string v0, "UninstallationBlacklist"

    aput-object v0, v4, v9

    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "getApplicationInstallUninstallList"

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string v0, "MenuAppModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEnterprisePolicyEnabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-boolean v9, p0, Lcom/android/launcher2/MenuAppModel;->mEDMBlockDisableAllList:Z

    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mEDMBlockDisableContainList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mEDMBlockDisablePackageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz v6, :cond_3

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    const-string v0, "getApplicationInstallUninstallList"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v0, ".*"

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v0, -0x1

    if-le v7, v0, :cond_5

    :goto_1
    if-lez v7, :cond_2

    const/4 v0, 0x0

    invoke-virtual {v8, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v0, ".*"

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    goto :goto_1

    :cond_1
    const-string v0, "MenuAppModel"

    const-string v2, "getApplicationInstallUninstallList cursor is null:"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-nez v7, :cond_4

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppModel;->mEDMBlockDisableAllList:Z

    const-string v0, "MenuAppModel"

    const-string v2, "mEDMDisableContainList. all list"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const-string v0, "MenuAppModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEDMDisableContainList.add:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_4
    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mEDMBlockDisableContainList:Ljava/util/List;

    const-string v2, "kr.co.rightbrain.RetailMode"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_4
    :try_start_2
    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mEDMBlockDisableContainList:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :cond_5
    :try_start_3
    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mEDMBlockDisablePackageList:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "MenuAppModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mEDMDisablePackageList.add:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getFolderToDelete()Lcom/android/launcher2/AppFolderItem;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mFolderToDelete:Lcom/android/launcher2/AppFolderItem;

    return-object v0
.end method

.method public getTopLevelItems()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    const/4 v8, 0x0

    iget-boolean v9, p0, Lcom/android/launcher2/MenuAppModel;->mSuspendGets:Z

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    if-nez v9, :cond_0

    iget-boolean v9, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    invoke-virtual {p0, v9}, Lcom/android/launcher2/MenuAppModel;->normalizeModel(Z)V

    :cond_0
    iget-object v9, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    const-string v9, "MenuAppModel"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "get TopLevelItems:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    if-eqz v8, :cond_b

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_b

    iget-object v9, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    const-string v10, "com.sec.android.app.launcher.prefs"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/android/launcher2/LauncherApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string v9, "MenuView.ViewType"

    sget-object v10, Lcom/android/launcher2/MenuView$ViewType;->CUSTOM_GRID:Lcom/android/launcher2/MenuView$ViewType;

    invoke-virtual {v10}, Lcom/android/launcher2/MenuView$ViewType;->name()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/launcher2/MenuView$ViewType;->valueOf(Ljava/lang/String;)Lcom/android/launcher2/MenuView$ViewType;

    move-result-object v4

    sget-object v9, Lcom/android/launcher2/MenuView$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher2/MenuView$ViewType;

    if-ne v4, v9, :cond_b

    iget-boolean v9, p0, Lcom/android/launcher2/MenuAppModel;->mIsFinishFrontAppsLoader:Z

    if-nez v9, :cond_2

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/launcher2/MenuAppModel;->mIsFinishFrontAppsLoader:Z

    iget-object v9, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v9}, Lcom/android/launcher2/LauncherApplication;->getLauncherProvider()Lcom/android/launcher2/LauncherProvider;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/android/launcher2/LauncherProvider;->loadFrontApps()Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, p0, Lcom/android/launcher2/MenuAppModel;->mFrontApps:Ljava/util/ArrayList;

    :cond_2
    iget-object v9, p0, Lcom/android/launcher2/MenuAppModel;->mFrontApps:Ljava/util/ArrayList;

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/launcher2/MenuAppModel;->mFrontApps:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_b

    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_6

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    iget-object v9, p0, Lcom/android/launcher2/MenuAppModel;->mFrontApps:Ljava/util/ArrayList;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/launcher2/MenuAppModel;->mFrontApps:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_3

    if-eqz v0, :cond_3

    iget-object v9, v0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v9, :cond_3

    const/4 v3, 0x0

    :goto_2
    iget-object v9, p0, Lcom/android/launcher2/MenuAppModel;->mFrontApps:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_3

    iget-object v9, v0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher2/MenuAppModel;->mFrontApps:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const-string v9, "MenuAppModel"

    const-string v10, "no mTopLevelItems"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v1, v9, :cond_a

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    const/4 v2, 0x0

    iget-object v9, p0, Lcom/android/launcher2/MenuAppModel;->mFrontApps:Ljava/util/ArrayList;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/launcher2/MenuAppModel;->mFrontApps:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_7

    if-eqz v0, :cond_7

    iget-object v9, v0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    if-eqz v9, :cond_7

    const/4 v3, 0x0

    :goto_4
    iget-object v9, p0, Lcom/android/launcher2/MenuAppModel;->mFrontApps:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_7

    iget-object v9, v0, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher2/MenuAppModel;->mFrontApps:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v2, 0x1

    :cond_7
    if-nez v2, :cond_8

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_a
    const-string v9, "MenuAppModel"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "get new TopLevelItems:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-object v5

    :cond_b
    move-object v5, v8

    goto :goto_5
.end method

.method public invalidateTopLevelItems()V
    .locals 2

    const-string v0, "MenuAppModel"

    const-string v1, "invalidateTopLevelItems"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    return-void
.end method

.method public isBlockUninstall(Lcom/android/launcher2/AppItem;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/MenuAppModel;->isBlockUninstall(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isBlockUninstall(Ljava/lang/String;)Z
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/launcher2/MenuAppModel;->isEnterprisePolicyBlockUninstall(Ljava/lang/String;)Z

    move-result v2

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    const-string v4, "device_policy"

    invoke-virtual {v3, v4}, Lcom/android/launcher2/LauncherApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Landroid/app/admin/DevicePolicyManager;->semHasActiveAdminForPackage(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    if-nez v2, :cond_1

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/launcher2/MenuAppModel;->isDisableFromSetting(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isEnterprisePolicyBlockUninstall(Ljava/lang/String;)Z
    .locals 4

    const/4 v1, 0x1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-boolean v2, p0, Lcom/android/launcher2/MenuAppModel;->mEDMBlockDisableAllList:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mEDMBlockDisableContainList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mEDMBlockDisablePackageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNonDisableItem(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/android/launcher2/MenuAppModel;->mNonDisableItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public makeDisableAppList()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->getEnterprisePolicyBlockUninstallList()V

    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->createSkiplistByMetadata()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppModel;->makeDisableAppListFromMeta()V

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/MenuAppModel;->addNonDisableAppToListFromXML()V

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppModel;->addNonDisableAppToListFromCSC()V

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppModel;->addNonDisableAppToListFromSettingsCSC()V

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppModel;->getHomePackageList()V

    return-void
.end method

.method public makeDisableAppListFromMeta(Ljava/lang/String;)V
    .locals 12

    iget-object v9, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v9}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    if-eqz v5, :cond_2

    const/4 v6, 0x0

    :try_start_0
    const-string v9, "android"

    const/16 v10, 0x40

    invoke-virtual {v5, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v9, v7, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v9, :cond_0

    iget-object v9, v7, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v10, 0x0

    aget-object v6, v9, v10
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v2, 0x0

    const/16 v9, 0x80

    :try_start_1
    invoke-virtual {v5, p1, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    :goto_1
    const/4 v8, 0x0

    const/4 v0, 0x0

    if-eqz v2, :cond_2

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v4, :cond_1

    iget-object v9, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v9, :cond_1

    const-string v9, "com.sec.android.app.unblockdisabling"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    const-string v9, "com.sec.android.app.blockdisabling"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_4

    sget-object v9, Lcom/android/launcher2/MenuAppModel;->mNonDisableItems:Ljava/util/ArrayList;

    iget-object v10, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    sget-object v9, Lcom/android/launcher2/MenuAppModel;->mNonDisableItems:Ljava/util/ArrayList;

    iget-object v10, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v9, Lcom/android/launcher2/MenuAppModel;->DEBUG:Z

    if-eqz v9, :cond_2

    const-string v9, "MenuAppModel"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", block option : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-void

    :catch_0
    move-exception v1

    sget-boolean v9, Lcom/android/launcher2/MenuAppModel;->DEBUG:Z

    if-eqz v9, :cond_3

    const-string v9, "MenuAppModel"

    const-string v10, "Can\'t get the android package information "

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v9, "MenuAppModel"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "makeDisableAppListFromMeta:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v9, "MenuAppModel"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to read meta data:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4
    if-eqz v8, :cond_5

    sget-object v9, Lcom/android/launcher2/MenuAppModel;->mNonDisableItems:Ljava/util/ArrayList;

    iget-object v10, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    sget-object v9, Lcom/android/launcher2/MenuAppModel;->mDisableItems:Ljava/util/ArrayList;

    iget-object v10, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    sget-object v9, Lcom/android/launcher2/MenuAppModel;->mDisableItems:Ljava/util/ArrayList;

    iget-object v10, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v9, Lcom/android/launcher2/MenuAppModel;->DEBUG:Z

    if-eqz v9, :cond_2

    const-string v9, "MenuAppModel"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Unblock option : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_5
    :try_start_2
    iget-object v9, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v10, 0x40

    invoke-virtual {v5, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v9, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v9, :cond_6

    if-eqz v6, :cond_6

    iget-object v9, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-virtual {v6, v9}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    :cond_6
    sget-object v9, Lcom/android/launcher2/MenuAppModel;->mNonDisableItems:Ljava/util/ArrayList;

    iget-object v10, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    sget-object v9, Lcom/android/launcher2/MenuAppModel;->mDisableItems:Ljava/util/ArrayList;

    iget-object v10, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    sget-object v9, Lcom/android/launcher2/MenuAppModel;->mDisableItems:Ljava/util/ArrayList;

    iget-object v10, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v9, Lcom/android/launcher2/MenuAppModel;->DEBUG:Z

    if-eqz v9, :cond_2

    const-string v9, "MenuAppModel"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " can be disabled."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v1

    sget-boolean v9, Lcom/android/launcher2/MenuAppModel;->DEBUG:Z

    if-eqz v9, :cond_7

    const-string v9, "MenuAppModel"

    const-string v10, "Can\'t get the package information"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const-string v9, "MenuAppModel"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "makeDisableAppListFromMeta:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method normalizeAppMap(Ljava/util/Map;Lcom/android/launcher2/MenuAppModel$Normalizer;Z)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/AppItem;",
            ">;",
            "Lcom/android/launcher2/MenuAppModel$Normalizer",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    new-instance v12, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v13

    invoke-direct {v12, v13}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/AppItem;

    iget-object v13, v7, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v14, Lcom/android/launcher2/BaseItem$Type;->MENU_FOLDER:Lcom/android/launcher2/BaseItem$Type;

    if-ne v13, v14, :cond_2

    move-object v13, v7

    check-cast v13, Lcom/android/launcher2/FolderItem;

    invoke-interface {v13}, Lcom/android/launcher2/FolderItem;->getItemCount()I

    move-result v13

    if-lez v13, :cond_1

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    check-cast v7, Lcom/android/launcher2/AppFolderItem;

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Lcom/android/launcher2/AppFolderItem;->normalize(Lcom/android/launcher2/MenuAppModel$Normalizer;)V

    goto :goto_0

    :cond_1
    const-string v13, "MenuAppModel"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Not added top level item:folder item has no child:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v13, v7, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-nez v13, :cond_7

    iget-boolean v13, v7, Lcom/android/launcher2/AppItem;->mHidden:Z

    if-nez v13, :cond_7

    const/4 v5, 0x1

    iget-object v13, v7, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    if-eqz v13, :cond_3

    iget-object v13, v7, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_4

    :cond_3
    iget-object v13, v7, Lcom/android/launcher2/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    if-nez v13, :cond_4

    invoke-virtual {v7}, Lcom/android/launcher2/AppItem;->needLoadingBitmap()Z

    move-result v13

    if-nez v13, :cond_4

    const-string v13, "MenuAppModel"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "no title & icon - check app installed or not:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v7, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v13, v7, Lcom/android/launcher2/AppItem;->mUnavailable:Z

    if-nez v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v13}, Lcom/android/launcher2/LauncherApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    if-eqz v10, :cond_4

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v7}, Lcom/android/launcher2/AppItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v10, v13, v14}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-nez v6, :cond_4

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher2/LauncherApplication;->getPkgResCache()Lcom/android/launcher2/PkgResCache;

    move-result-object v9

    new-instance v11, Lcom/android/launcher2/PkgResCache$TitleIconInfo;

    invoke-direct {v11}, Lcom/android/launcher2/PkgResCache$TitleIconInfo;-><init>()V

    iget-object v13, v7, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    iget-object v14, v7, Lcom/android/launcher2/AppItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {v9, v13, v11, v14}, Lcom/android/launcher2/PkgResCache;->refreshTitleAndIcon(Landroid/content/ComponentName;Lcom/android/launcher2/PkgResCache$TitleIconInfo;Lcom/android/launcher2/compat/UserHandleCompat;)V

    iget-object v13, v11, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mIcon:Landroid/graphics/Bitmap;

    iput-object v13, v7, Lcom/android/launcher2/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    const/4 v13, 0x0

    iput-object v13, v7, Lcom/android/launcher2/AppItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    iget-object v13, v11, Lcom/android/launcher2/PkgResCache$TitleIconInfo;->mTitle:Ljava/lang/String;

    iput-object v13, v7, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    const-string v13, "MenuAppModel"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "reload item title & icon:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v7, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " icon:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v7, Lcom/android/launcher2/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    if-eqz v5, :cond_6

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catch_0
    move-exception v4

    const-string v13, "MenuAppModel"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "NameNotFoundException remove item:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v7}, Lcom/android/launcher2/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    new-instance v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v2}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    const/4 v13, 0x5

    iput v13, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    iget-wide v14, v7, Lcom/android/launcher2/AppItem;->mId:J

    iput-wide v14, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    iget-object v13, v7, Lcom/android/launcher2/AppItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    iput-object v13, v2, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v6, 0x1

    goto :goto_1

    :cond_5
    const-string v13, "MenuAppModel"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "item is unavaliable:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v7, Lcom/android/launcher2/AppItem;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    const-string v13, "MenuAppModel"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Not added top level item : item is not avaliable:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    iget-object v13, v7, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-nez v13, :cond_8

    const-string v13, "MenuAppModel"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Not added top level item : hidden:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    sget-boolean v13, Lcom/android/launcher2/MenuAppModel;->DEBUG:Z

    if-eqz v13, :cond_0

    const-string v13, "MenuAppModel"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Not added top level item : in folder:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_9
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    invoke-static {v13, v3}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    :cond_a
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/launcher2/MenuAppModel;->mMaxItemsPerPage:I

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v0, v12, v13, v1}, Lcom/android/launcher2/MenuAppModel$Normalizer;->normalize(Ljava/util/List;IZ)V

    return-object v12
.end method

.method public declared-synchronized normalizeModel(Z)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mNormalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    iget-object v4, p0, Lcom/android/launcher2/MenuAppModel;->mNormalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;

    invoke-virtual {p0, v3, v4, p1}, Lcom/android/launcher2/MenuAppModel;->normalizeAppMap(Ljava/util/Map;Lcom/android/launcher2/MenuAppModel$Normalizer;Z)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    iget-boolean v4, v0, Lcom/android/launcher2/AppItem;->mDirty:Z

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/launcher2/AppItem;->mType:Lcom/android/launcher2/BaseItem$Type;

    sget-object v5, Lcom/android/launcher2/BaseItem$Type;->MENU_APP:Lcom/android/launcher2/BaseItem$Type;

    if-ne v4, v5, :cond_0

    new-instance v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;

    invoke-direct {v1}, Lcom/android/launcher2/LauncherSettings$AppOrderModify;-><init>()V

    const/4 v4, 0x4

    iput v4, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->action:I

    iget-wide v4, v0, Lcom/android/launcher2/AppItem;->mId:J

    iput-wide v4, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->id:J

    iget-object v4, v0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    iget-wide v4, v4, Lcom/android/launcher2/AppFolderItem;->mId:J

    :goto_1
    iput-wide v4, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->folderId:J

    iget v4, v0, Lcom/android/launcher2/AppItem;->mScreen:I

    iput v4, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->screen:I

    iget v4, v0, Lcom/android/launcher2/AppItem;->mCell:I

    iput v4, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->cell:I

    iget-boolean v4, v0, Lcom/android/launcher2/AppItem;->mHidden:Z

    iput-boolean v4, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->hidden:Z

    iget-object v4, v0, Lcom/android/launcher2/AppItem;->mTitle:Ljava/lang/String;

    iput-object v4, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->title:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/launcher2/AppItem;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    iput-object v4, v1, Lcom/android/launcher2/LauncherSettings$AppOrderModify;->user:Lcom/android/launcher2/compat/UserHandleCompat;

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/launcher2/AppItem;->mDirty:Z

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    :cond_1
    const-wide/16 v4, -0x1

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/launcher2/LauncherModel;->updateAppItems(Landroid/content/Context;Ljava/util/List;)V

    :cond_3
    sget-boolean v3, Lcom/android/launcher2/MenuAppModel;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v4, "MenuAppModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "normalizeModel. Normalizer: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/launcher2/MenuAppModel;->mNormalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", count: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    if-nez v3, :cond_5

    const/4 v3, -0x1

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :cond_5
    :try_start_2
    iget-object v3, p0, Lcom/android/launcher2/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    goto :goto_2
.end method

.method onLocaleChanged()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppModel;->mSuspendGets:Z

    return-void
.end method

.method onModelRefreshed()V
    .locals 1

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppModel;->sCollator:Ljava/text/Collator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppModel;->mSuspendGets:Z

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    return-void
.end method

.method public releaseShadows()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/launcher2/AppItem;->mIconShadowBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setFolderToDelete(Lcom/android/launcher2/AppFolderItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppModel;->mFolderToDelete:Lcom/android/launcher2/AppFolderItem;

    return-void
.end method

.method public setLauncherApplication(Lcom/android/launcher2/LauncherApplication;)V
    .locals 3

    iput-object p1, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mApplication:Lcom/android/launcher2/LauncherApplication;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const v2, 0x7f0c000d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher2/MenuAppModel;->mMaxItemsPerPage:I

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isSafeMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher2/MenuAppModel;->mIsSafeMode:Z

    :goto_0
    return-void

    :cond_0
    const-string v1, "MenuAppModel"

    const-string v2, "setLauncherApplication Application null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher2/MenuAppModel;->mIsSafeMode:Z

    goto :goto_0
.end method

.method public setModelItems(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/AppItem;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/MenuAppModel;->sCollator:Ljava/text/Collator;

    iput-boolean v1, p0, Lcom/android/launcher2/MenuAppModel;->mSuspendGets:Z

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    invoke-direct {p0}, Lcom/android/launcher2/MenuAppModel;->setModelFlags()V

    iget-boolean v0, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/launcher2/MenuAppModel;->mInEditMode:Z

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->editBegin()V

    :cond_0
    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->getState()Lcom/android/launcher2/MenuAppsGrid$State;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/MenuAppsGrid$State;->SEARCH:Lcom/android/launcher2/MenuAppsGrid$State;

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/android/launcher2/Launcher;->getInstance()Lcom/android/launcher2/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getMenuView()Lcom/android/launcher2/MenuView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/MenuView;->getMenuAppsGrid()Lcom/android/launcher2/MenuAppsGrid;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/MenuAppsGrid;->setAllAppsItems(Ljava/util/Map;)V

    :cond_1
    return-void
.end method

.method public setNormalizer(Lcom/android/launcher2/MenuAppModel$Normalizer;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/MenuAppModel$Normalizer",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher2/MenuAppModel;->mNormalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/MenuAppModel;->mMaxItemsPerPage:I

    if-eq p2, v0, :cond_1

    :cond_0
    iput p2, p0, Lcom/android/launcher2/MenuAppModel;->mMaxItemsPerPage:I

    iput-object p1, p0, Lcom/android/launcher2/MenuAppModel;->mNormalizer:Lcom/android/launcher2/MenuAppModel$Normalizer;

    invoke-virtual {p0}, Lcom/android/launcher2/MenuAppModel;->invalidateTopLevelItems()V

    :cond_1
    return-void
.end method

.method public startChangeGridLoader(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/AppItem;",
            ">;"
        }
    .end annotation

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput p1, p0, Lcom/android/launcher2/MenuAppModel;->mMaxItemsPerPage:I

    iget-object v2, p0, Lcom/android/launcher2/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AppItem;

    iget-object v3, v0, Lcom/android/launcher2/AppItem;->mFolder:Lcom/android/launcher2/AppFolderItem;

    if-nez v3, :cond_1

    iget-boolean v3, v0, Lcom/android/launcher2/AppItem;->mHidden:Z

    if-nez v3, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    sget-object v2, Lcom/android/launcher2/MenuAppModel;->MENU_GRID_CHANGE_NORMALIZER:Lcom/android/launcher2/MenuAppModel$Normalizer;

    iget v3, p0, Lcom/android/launcher2/MenuAppModel;->mMaxItemsPerPage:I

    const/4 v4, 0x0

    invoke-interface {v2, v1, v3, v4}, Lcom/android/launcher2/MenuAppModel$Normalizer;->normalize(Ljava/util/List;IZ)V

    goto :goto_0
.end method
