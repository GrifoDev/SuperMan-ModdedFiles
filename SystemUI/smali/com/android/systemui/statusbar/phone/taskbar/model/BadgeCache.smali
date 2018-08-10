.class public Lcom/android/systemui/statusbar/phone/taskbar/model/BadgeCache;
.super Ljava/lang/Object;
.source "BadgeCache.java"


# static fields
.field private static final BADGE_COLUMNS:[Ljava/lang/String;

.field private static final DEBUGGABLE:Z

.field public static final USING_BADGE_APPS_LIST:[Ljava/lang/String;

.field private static final ZERO:Ljava/lang/Integer;


# instance fields
.field private final mBadges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/taskbar/model/BadgeCache;->DEBUGGABLE:Z

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "package"

    aput-object v1, v0, v2

    const-string/jumbo v1, "class"

    aput-object v1, v0, v3

    const-string/jumbo v1, "badgecount"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/BadgeCache;->BADGE_COLUMNS:[Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/BadgeCache;->ZERO:Ljava/lang/Integer;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.android.mms"

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.android.email"

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.android.contacts"

    aput-object v1, v0, v4

    const-string/jumbo v1, "com.sec.android.app.samsungapps"

    aput-object v1, v0, v5

    const-string/jumbo v1, "com.android.jcontacts"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/BadgeCache;->USING_BADGE_APPS_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/BadgeCache;->mBadges:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/BadgeCache;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    return-void
.end method

.method public static final BADGE_URI(I)Landroid/net/Uri;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "@com.sec.badge/apps"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method updateBadgeCounts()Ljava/util/Map;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Landroid/content/ComponentName;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/BadgeCache;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/BadgeCache;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getCurrentUserId()I

    move-result v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/model/BadgeCache;->BADGE_URI(I)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/phone/taskbar/model/BadgeCache;->BADGE_COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/BadgeCache;->mBadges:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/model/BadgeCache;->ZERO:Ljava/lang/Integer;

    invoke-interface {v13, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/model/BadgeCache;->USING_BADGE_APPS_LIST:[Ljava/lang/String;

    array-length v1, v1

    new-array v0, v1, [Z

    move-object/from16 v16, v0

    :cond_1
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v1, 0x2

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-eqz v17, :cond_1

    const/4 v7, -0x1

    const/4 v15, 0x0

    :goto_2
    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/model/BadgeCache;->USING_BADGE_APPS_LIST:[Ljava/lang/String;

    array-length v1, v1

    if-ge v15, v1, :cond_2

    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/model/BadgeCache;->USING_BADGE_APPS_LIST:[Ljava/lang/String;

    aget-object v1, v1, v15

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move v7, v15

    :cond_2
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/taskbar/model/BadgeCache;->DEBUGGABLE:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "[DS]BadgeCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "1. updateBadgeCounts: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v11, :cond_4

    if-lez v8, :cond_4

    if-ltz v7, :cond_6

    aget-boolean v1, v16, v7

    if-eqz v1, :cond_6

    const-string/jumbo v1, "[DS]BadgeCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "2. Do not updateBadgeCounts!!, multiple data for appIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_3
    if-ltz v7, :cond_1

    const/4 v1, 0x1

    aput-boolean v1, v16, v7

    goto :goto_1

    :cond_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_6
    new-instance v12, Landroid/content/ComponentName;

    move-object/from16 v0, v17

    invoke-direct {v12, v0, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/BadgeCache;->mBadges:Ljava/util/Map;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v1, Lcom/android/systemui/statusbar/phone/taskbar/model/BadgeCache;->DEBUGGABLE:Z

    if-eqz v1, :cond_4

    const-string/jumbo v1, "[DS]BadgeCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "2. updateBadgeCounts: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/BadgeCache;->mBadges:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    :cond_8
    return-object v9
.end method
