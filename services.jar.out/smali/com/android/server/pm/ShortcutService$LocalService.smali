.class Lcom/android/server/pm/ShortcutService$LocalService;
.super Landroid/content/pm/ShortcutServiceInternal;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocalService"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ShortcutService$LocalService$-android_content_pm_ShortcutInfo_getShortcutInfoLocked_int_launcherUserId_java_lang_String_callingPackage_java_lang_String_packageName_java_lang_String_shortcutId_int_userId_LambdaImpl0;,
        Lcom/android/server/pm/ShortcutService$LocalService$-java_util_List_getShortcuts_int_launcherUserId_java_lang_String_callingPackage_long_changedSince_java_lang_String_packageName_java_util_List_shortcutIds_android_content_ComponentName_componentName_int_queryFlags_int_userId_LambdaImpl0;,
        Lcom/android/server/pm/ShortcutService$LocalService$-void_getShortcutsInnerLocked_int_launcherUserId_java_lang_String_callingPackage_java_lang_String_packageName_java_util_List_shortcutIds_long_changedSince_android_content_ComponentName_componentName_int_queryFlags_int_userId_java_util_ArrayList_ret_int_cloneFlag_LambdaImpl0;,
        Lcom/android/server/pm/ShortcutService$LocalService$-void_onSystemLocaleChangedNoLock__LambdaImpl0;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method static synthetic -com_android_server_pm_ShortcutService$LocalService_lambda$2(JLandroid/util/ArraySet;Landroid/content/ComponentName;ILandroid/content/pm/ShortcutInfo;)Z
    .locals 6

    const/4 v4, 0x0

    invoke-virtual {p5}, Landroid/content/pm/ShortcutInfo;->getLastChangedTimestamp()J

    move-result-wide v2

    cmp-long v2, v2, p0

    if-gez v2, :cond_0

    return v4

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p5}, Landroid/content/pm/ShortcutInfo;->getActivityComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    and-int/lit8 v2, p4, 0x1

    if-eqz v2, :cond_5

    invoke-virtual {p5}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v0

    :goto_0
    and-int/lit8 v2, p4, 0x2

    if-eqz v2, :cond_6

    invoke-virtual {p5}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v1

    :goto_1
    if-nez v0, :cond_7

    :goto_2
    return v1

    :cond_3
    return v4

    :cond_4
    return v4

    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    goto :goto_1

    :cond_7
    const/4 v1, 0x1

    goto :goto_2
.end method

.method static synthetic -com_android_server_pm_ShortcutService$LocalService_lambda$3(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-direct {p0}, Landroid/content/pm/ShortcutServiceInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/ShortcutService;Lcom/android/server/pm/ShortcutService$LocalService;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/ShortcutService$LocalService;-><init>(Lcom/android/server/pm/ShortcutService;)V

    return-void
.end method

.method private getShortcutInfoLocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/ShortcutInfo;
    .locals 7

    const/4 v4, 0x0

    const-string/jumbo v0, "packageName"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    const-string/jumbo v0, "shortcutId"

    invoke-static {p4, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    new-instance v2, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p3, p5}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    new-instance v3, Lcom/android/server/pm/ShortcutService$LocalService$-android_content_pm_ShortcutInfo_getShortcutInfoLocked_int_launcherUserId_java_lang_String_callingPackage_java_lang_String_packageName_java_lang_String_shortcutId_int_userId_LambdaImpl0;

    invoke-direct {v3, p4}, Lcom/android/server/pm/ShortcutService$LocalService$-android_content_pm_ShortcutInfo_getShortcutInfoLocked_int_launcherUserId_java_lang_String_callingPackage_java_lang_String_packageName_java_lang_String_shortcutId_int_userId_LambdaImpl0;-><init>(Ljava/lang/String;)V

    move-object v5, p2

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/pm/ShortcutPackage;->findAll(Lcom/android/server/pm/ShortcutService;Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    goto :goto_0
.end method

.method private getShortcutsInnerLocked(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;I)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J",
            "Landroid/content/ComponentName;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;I)V"
        }
    .end annotation

    if-nez p4, :cond_0

    const/4 v6, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    move-object/from16 v0, p3

    move/from16 v1, p9

    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v2

    iget-object v9, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    new-instance v3, Lcom/android/server/pm/ShortcutService$LocalService$-void_getShortcutsInnerLocked_int_launcherUserId_java_lang_String_callingPackage_java_lang_String_packageName_java_util_List_shortcutIds_long_changedSince_android_content_ComponentName_componentName_int_queryFlags_int_userId_java_util_ArrayList_ret_int_cloneFlag_LambdaImpl0;

    move-wide/from16 v4, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v3 .. v8}, Lcom/android/server/pm/ShortcutService$LocalService$-void_getShortcutsInnerLocked_int_launcherUserId_java_lang_String_callingPackage_java_lang_String_packageName_java_util_List_shortcutIds_long_changedSince_android_content_ComponentName_componentName_int_queryFlags_int_userId_java_util_ArrayList_ret_int_cloneFlag_LambdaImpl0;-><init>(JLandroid/util/ArraySet;Landroid/content/ComponentName;I)V

    move-object v7, v2

    move-object v8, v9

    move-object/from16 v9, p10

    move-object v10, v3

    move/from16 v11, p11

    move-object/from16 v12, p2

    move/from16 v13, p1

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/pm/ShortcutPackage;->findAll(Lcom/android/server/pm/ShortcutService;Ljava/util/List;Ljava/util/function/Predicate;ILjava/lang/String;I)V

    return-void

    :cond_0
    new-instance v6, Landroid/util/ArraySet;

    move-object/from16 v0, p4

    invoke-direct {v6, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method


# virtual methods
.method synthetic -com_android_server_pm_ShortcutService$LocalService_lambda$1(ILjava/lang/String;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;ILcom/android/server/pm/ShortcutPackage;)V
    .locals 14

    invoke-virtual/range {p11 .. p11}, Lcom/android/server/pm/ShortcutPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    invoke-direct/range {v1 .. v12}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutsInnerLocked(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;I)V

    return-void
.end method

.method synthetic -com_android_server_pm_ShortcutService$LocalService_lambda$4()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-wrap6(Lcom/android/server/pm/ShortcutService;)V

    return-void
.end method

.method public addListener(Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutService;->-get0(Lcom/android/server/pm/ShortcutService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutServiceInternal$ShortcutChangeListener;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public createShortcutIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "packageName can\'t be empty"

    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    const-string/jumbo v1, "shortcutId can\'t be empty"

    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v1}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;)V

    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutInfoLocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isDynamic()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getIntent()Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    :cond_1
    monitor-exit v2

    return-object v4

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getShortcutIconFd(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .locals 7

    const/4 v6, 0x0

    const-string/jumbo v2, "callingPackage"

    invoke-static {p2, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "packageName"

    invoke-static {p3, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "shortcutId"

    invoke-static {p4, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v2}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v2, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v2, v4}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;)V

    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v2, p3, p5}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v2

    invoke-virtual {v2, p4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->hasIconFile()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "ShortcutService"

    const-string/jumbo v4, "null bitmap detected in getShortcutIconFd()"

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-object v6

    :cond_0
    monitor-exit v3

    return-object v6

    :cond_1
    :try_start_2
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x10000000

    invoke-static {v2, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    monitor-exit v3

    return-object v2

    :catch_0
    move-exception v0

    :try_start_3
    const-string/jumbo v2, "ShortcutService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Icon file not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getBitmapPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    return-object v6

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public getShortcutIconResId(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4

    const-string/jumbo v1, "callingPackage"

    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "packageName"

    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "shortcutId"

    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v1}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;)V

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p3, p5}, Lcom/android/server/pm/ShortcutService;->getPackageShortcutsLocked(Ljava/lang/String;I)Lcom/android/server/pm/ShortcutPackage;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/android/server/pm/ShortcutPackage;->findShortcutById(Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->hasIconResource()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public getShortcuts(ILjava/lang/String;JLjava/lang/String;Ljava/util/List;Landroid/content/ComponentName;II)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/ComponentName;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v4, p8, 0x4

    if-nez v4, :cond_1

    const/16 v16, 0x3

    :goto_0
    if-nez p5, :cond_0

    const/16 p6, 0x0

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v4}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v17

    monitor-enter v17

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    move-object/from16 v0, p2

    move/from16 v1, p9

    move/from16 v2, p1

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v4, v5}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;)V

    if-eqz p5, :cond_2

    move-object/from16 v5, p0

    move/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-wide/from16 v10, p3

    move-object/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    invoke-direct/range {v5 .. v16}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutsInnerLocked(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v17

    return-object v15

    :cond_1
    const/16 v16, 0x4

    goto :goto_0

    :cond_2
    move-object/from16 v9, p6

    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    move/from16 v0, p9

    invoke-virtual {v4, v0}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v4

    new-instance v5, Lcom/android/server/pm/ShortcutService$LocalService$-java_util_List_getShortcuts_int_launcherUserId_java_lang_String_callingPackage_long_changedSince_java_lang_String_packageName_java_util_List_shortcutIds_android_content_ComponentName_componentName_int_queryFlags_int_userId_LambdaImpl0;

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-wide/from16 v10, p3

    move-object/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p9

    invoke-direct/range {v5 .. v16}, Lcom/android/server/pm/ShortcutService$LocalService$-java_util_List_getShortcuts_int_launcherUserId_java_lang_String_callingPackage_long_changedSince_java_lang_String_packageName_java_util_List_shortcutIds_android_content_ComponentName_componentName_int_queryFlags_int_userId_LambdaImpl0;-><init>(Lcom/android/server/pm/ShortcutService$LocalService;ILjava/lang/String;Ljava/util/List;JLandroid/content/ComponentName;IILjava/util/ArrayList;I)V

    invoke-virtual {v4, v5}, Lcom/android/server/pm/ShortcutUser;->forAllPackages(Ljava/util/function/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v17

    throw v4
.end method

.method public hasShortcutHostPermission(ILjava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, p2, p1}, Lcom/android/server/pm/ShortcutService;->hasShortcutHostPermission(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isPinnedByCaller(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4

    const-string/jumbo v1, "packageName"

    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    const-string/jumbo v1, "shortcutId"

    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v1}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;)V

    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/ShortcutService$LocalService;->getShortcutInfoLocked(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public onSystemLocaleChangedNoLock()V
    .locals 0

    return-void
.end method

.method public pinShortcuts(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const-string/jumbo v1, "packageName"

    invoke-static {p3, v1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    const-string/jumbo v1, "shortcutIds"

    invoke-static {p4, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v1}, Lcom/android/server/pm/ShortcutService;->-get2(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p2, p5, p1}, Lcom/android/server/pm/ShortcutService;->getLauncherShortcutsLocked(Ljava/lang/String;II)Lcom/android/server/pm/ShortcutLauncher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutLauncher;->attemptToRestoreIfNeededAndSave(Lcom/android/server/pm/ShortcutService;)V

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v0, v1, p5, p3, p4}, Lcom/android/server/pm/ShortcutLauncher;->pinShortcuts(Lcom/android/server/pm/ShortcutService;ILjava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$LocalService;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1, p3, p5}, Lcom/android/server/pm/ShortcutService;->packageShortcutsChanged(Ljava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
