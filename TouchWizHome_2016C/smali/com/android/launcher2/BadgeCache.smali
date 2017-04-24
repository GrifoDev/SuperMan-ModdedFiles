.class public Lcom/android/launcher2/BadgeCache;
.super Ljava/lang/Object;
.source "BadgeCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/BadgeCache$CacheKey;
    }
.end annotation


# static fields
.field private static final BADGE_COLUMNS:[Ljava/lang/String;

.field private static final BADGE_MANAGE_COLUMNS:[Ljava/lang/String;

.field public static final BADGE_URI:Landroid/net/Uri;

.field private static final DEBUGGABLE:Z = true

.field private static final INITIAL_BADGE_CAPACITY:I = 0x14

.field private static final TAG:Ljava/lang/String; = "BadgeCache"

.field public static final USING_BADGE_APPS_LIST:[Ljava/lang/String;

.field private static final ZERO:Ljava/lang/Integer;


# instance fields
.field private final mApp:Landroid/app/Application;

.field private final mBadges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/launcher2/BadgeCache$CacheKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "content://com.sec.badge/apps"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/BadgeCache;->BADGE_URI:Landroid/net/Uri;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "package"

    aput-object v1, v0, v2

    const-string v1, "class"

    aput-object v1, v0, v3

    const-string v1, "badgecount"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/launcher2/BadgeCache;->BADGE_COLUMNS:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "package"

    aput-object v1, v0, v2

    const-string v1, "class"

    aput-object v1, v0, v3

    const-string v1, "badgecount"

    aput-object v1, v0, v4

    const-string v1, "hidden"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/launcher2/BadgeCache;->BADGE_MANAGE_COLUMNS:[Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/BadgeCache;->ZERO:Ljava/lang/Integer;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.android.mms"

    aput-object v1, v0, v2

    const-string v1, "com.android.email"

    aput-object v1, v0, v3

    const-string v1, "com.android.contacts"

    aput-object v1, v0, v4

    const-string v1, "com.sec.android.app.samsungapps"

    aput-object v1, v0, v5

    const-string v1, "com.samsung.contacts"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "com.android.jcontacts"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/launcher2/BadgeCache;->USING_BADGE_APPS_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher2/BadgeCache;->mBadges:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/launcher2/BadgeCache;->mApp:Landroid/app/Application;

    return-void
.end method

.method private static isKnoxIdExceptSecurFolder(I)Z
    .locals 1

    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    goto :goto_0
.end method

.method public static maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 7

    const/4 v2, 0x0

    :try_start_0
    const-class v1, Landroid/content/ContentProvider;

    const-string v3, "maybeAddUserId"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/net/Uri;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    :goto_1
    const-string v1, "BadgeCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to invoke : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method getBadgeCount(Lcom/android/launcher2/BadgeCache$CacheKey;)I
    .locals 3

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/launcher2/BadgeCache;->mBadges:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    return v0
.end method

.method updateBadgeCounts()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/android/launcher2/BadgeCache$CacheKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v5, p0, Lcom/android/launcher2/BadgeCache;->mBadges:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    sget-object v6, Lcom/android/launcher2/BadgeCache;->ZERO:Ljava/lang/Integer;

    invoke-interface {v1, v6}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iget-object v5, p0, Lcom/android/launcher2/BadgeCache;->mApp:Landroid/app/Application;

    invoke-static {v5}, Lcom/android/launcher2/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher2/compat/UserManagerCompat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/compat/UserHandleCompat;

    invoke-virtual {v3}, Lcom/android/launcher2/compat/UserHandleCompat;->hashCode()I

    move-result v6

    invoke-static {v6}, Lcom/android/launcher2/BadgeCache;->isKnoxIdExceptSecurFolder(I)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/android/launcher2/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/launcher2/BadgeCache;->updateBadgeCounts(Lcom/android/launcher2/compat/UserHandleCompat;)Ljava/util/Map;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v5, "BadgeCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateBadgeCounts:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method updateBadgeCounts(Lcom/android/launcher2/compat/UserHandleCompat;)Ljava/util/Map;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher2/compat/UserHandleCompat;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/android/launcher2/BadgeCache$CacheKey;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-object v2, Lcom/android/launcher2/BadgeCache;->BADGE_URI:Landroid/net/Uri;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v9

    const/4 v14, 0x0

    const/16 v17, 0x0

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/launcher2/BadgeCache;->BADGE_URI:Landroid/net/Uri;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/compat/UserHandleCompat;->hashCode()I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/launcher2/BadgeCache;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_0

    move-object v10, v9

    :goto_0
    return-object v10

    :cond_0
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "noMultiUser"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->isSupportBadgeManage()Z

    move-result v22

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherApplication;->getBadgeSetings()I

    move-result v18

    const/4 v11, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/BadgeCache;->mApp:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-eqz v22, :cond_7

    sget-object v3, Lcom/android/launcher2/BadgeCache;->BADGE_MANAGE_COLUMNS:[Ljava/lang/String;

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    :goto_2
    if-eqz v11, :cond_b

    sget-object v1, Lcom/android/launcher2/BadgeCache;->USING_BADGE_APPS_LIST:[Ljava/lang/String;

    array-length v1, v1

    new-array v0, v1, [Z

    move-object/from16 v16, v0

    :cond_2
    :goto_3
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v1, 0x2

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v22, :cond_4

    const/4 v1, 0x3

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    if-eqz v18, :cond_3

    const/4 v1, 0x1

    if-ne v14, v1, :cond_4

    :cond_3
    const/4 v8, 0x0

    :cond_4
    if-eqz v20, :cond_2

    const/4 v7, -0x1

    const/4 v15, 0x0

    :goto_4
    sget-object v1, Lcom/android/launcher2/BadgeCache;->USING_BADGE_APPS_LIST:[Ljava/lang/String;

    array-length v1, v1

    if-ge v15, v1, :cond_5

    sget-object v1, Lcom/android/launcher2/BadgeCache;->USING_BADGE_APPS_LIST:[Ljava/lang/String;

    aget-object v1, v1, v15

    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v7, v15

    :cond_5
    const-string v1, "BadgeCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1. updateBadgeCounts: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_6

    if-lez v8, :cond_6

    if-ltz v7, :cond_9

    aget-boolean v1, v16, v7

    if-eqz v1, :cond_9

    const-string v1, "BadgeCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "2. Do not updateBadgeCounts!!, multiple data for appIndex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_5
    if-ltz v7, :cond_2

    const/4 v1, 0x1

    aput-boolean v1, v16, v7

    goto/16 :goto_3

    :cond_7
    :try_start_1
    sget-object v3, Lcom/android/launcher2/BadgeCache;->BADGE_COLUMNS:[Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    :catch_0
    move-exception v19

    const-string v1, "BadgeCache"

    const-string v3, "NPE is occured during query badge"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_1
    move-exception v21

    const-string v1, "BadgeCache"

    const-string v3, "SecurityException is occured during query badge"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_9
    new-instance v13, Landroid/content/ComponentName;

    move-object/from16 v0, v20

    invoke-direct {v13, v0, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/BadgeCache;->mBadges:Ljava/util/Map;

    new-instance v3, Lcom/android/launcher2/BadgeCache$CacheKey;

    move-object/from16 v0, p1

    invoke-direct {v3, v13, v0}, Lcom/android/launcher2/BadgeCache$CacheKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher2/compat/UserHandleCompat;)V

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "BadgeCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "2. updateBadgeCounts: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_a
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher2/BadgeCache;->mBadges:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    :cond_b
    const-string v1, "BadgeCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updated Badged:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v9

    goto/16 :goto_0
.end method
