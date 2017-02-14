.class public Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;
.super Ljava/lang/Object;
.source "PostPosition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/customer/PostPosition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SharedPrefInfo"
.end annotation


# static fields
.field public static final FAKE_ID:J = 0x1869eL

.field private static final PREFERENCES:Ljava/lang/String; = "com.sec.android.app.launcher.prefs.PostPosition"

.field private static final PREFS_APPS_FOLDER_ID:Ljava/lang/String; = "_Apps_FolderId"

.field private static final PREFS_APPS_FOLDER_NAME:Ljava/lang/String; = "_Apps_FolderName"

.field private static final PREFS_APPS_FOLDER_READY_ID:Ljava/lang/String; = "_Apps_FolderReadyId"

.field private static final PREFS_APPS_PRELOADED_FOLDER_ID:Ljava/lang/String; = "_Apps_PreloadedFolderId"

.field private static final PREFS_HOME_FOLDER_ID:Ljava/lang/String; = "_Home_FolderId"

.field private static final PREFS_HOME_FOLDER_NAME:Ljava/lang/String; = "_Home_FolderName"

.field private static final PREFS_HOME_FOLDER_READY_ID:Ljava/lang/String; = "_Home_FolderReadyId"

.field private static final PREFS_HOME_PRELOADED_FOLDER_ID:Ljava/lang/String; = "_Home_PreloadedFolderId"

.field public static final PREFS_POST_POSITION_ENABLED:Ljava/lang/String; = "PostPostionEnabled"

.field public static final REMOVED:J = 0x1869fL


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/customer/PostPosition;


# direct methods
.method public constructor <init>(Lcom/android/launcher2/customer/PostPosition;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;->this$0:Lcom/android/launcher2/customer/PostPosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getFolderKey(Lcom/android/launcher2/customer/PostPosition$CONTAINER;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/android/launcher2/customer/PostPosition$CONTAINER;->HOME:Lcom/android/launcher2/customer/PostPosition$CONTAINER;

    if-ne p1, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p3, :cond_0

    const-string v0, "_Home_FolderReadyId"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const-string v0, "_Home_FolderId"

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p3, :cond_2

    const-string v0, "_Apps_FolderReadyId"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, "_Apps_FolderId"

    goto :goto_2
.end method


# virtual methods
.method public getFolderId(Lcom/android/launcher2/customer/PostPosition$CONTAINER;Ljava/lang/String;Z)J
    .locals 6

    const-wide/16 v2, -0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;->getFolderKey(Lcom/android/launcher2/customer/PostPosition$CONTAINER;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;->this$0:Lcom/android/launcher2/customer/PostPosition;

    # getter for: Lcom/android/launcher2/customer/PostPosition;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/launcher2/customer/PostPosition;->access$400(Lcom/android/launcher2/customer/PostPosition;)Landroid/content/Context;

    move-result-object v1

    const-string v4, "com.sec.android.app.launcher.prefs.PostPosition"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-wide/16 v4, -0x1

    invoke-interface {v1, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public getFolderNameId(Lcom/android/launcher2/customer/PostPosition$CONTAINER;J)Ljava/lang/String;
    .locals 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v2, Lcom/android/launcher2/customer/PostPosition$CONTAINER;->HOME:Lcom/android/launcher2/customer/PostPosition$CONTAINER;

    if-ne p1, v2, :cond_0

    const-string v2, "_Home_FolderName"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;->this$0:Lcom/android/launcher2/customer/PostPosition;

    # getter for: Lcom/android/launcher2/customer/PostPosition;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/launcher2/customer/PostPosition;->access$400(Lcom/android/launcher2/customer/PostPosition;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.sec.android.app.launcher.prefs.PostPosition"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v2, "_Apps_FolderName"

    goto :goto_0
.end method

.method public getPreloadedFolderId(Lcom/android/launcher2/customer/PostPosition$CONTAINER;Ljava/lang/String;)J
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_Home_PreloadedFolderId"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/launcher2/customer/PostPosition$CONTAINER;->APPS:Lcom/android/launcher2/customer/PostPosition$CONTAINER;

    if-ne p1, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_Apps_PreloadedFolderId"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-wide/16 v2, -0x1

    iget-object v1, p0, Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;->this$0:Lcom/android/launcher2/customer/PostPosition;

    # getter for: Lcom/android/launcher2/customer/PostPosition;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/launcher2/customer/PostPosition;->access$400(Lcom/android/launcher2/customer/PostPosition;)Landroid/content/Context;

    move-result-object v1

    const-string v4, "com.sec.android.app.launcher.prefs.PostPosition"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-wide/16 v4, -0x1

    invoke-interface {v1, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public getPreloadedFolderNameId(Lcom/android/launcher2/customer/PostPosition$CONTAINER;J)Ljava/lang/String;
    .locals 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v2, Lcom/android/launcher2/customer/PostPosition$CONTAINER;->HOME:Lcom/android/launcher2/customer/PostPosition$CONTAINER;

    if-ne p1, v2, :cond_0

    const-string v2, "_Home_PreloadedFolderId"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;->this$0:Lcom/android/launcher2/customer/PostPosition;

    # getter for: Lcom/android/launcher2/customer/PostPosition;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/launcher2/customer/PostPosition;->access$400(Lcom/android/launcher2/customer/PostPosition;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.sec.android.app.launcher.prefs.PostPosition"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v2, "_Apps_PreloadedFolderId"

    goto :goto_0
.end method

.method public init(J)V
    .locals 5

    iget-object v1, p0, Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;->this$0:Lcom/android/launcher2/customer/PostPosition;

    # getter for: Lcom/android/launcher2/customer/PostPosition;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/launcher2/customer/PostPosition;->access$400(Lcom/android/launcher2/customer/PostPosition;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.sec.android.app.launcher.prefs.PostPosition"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PostPostionEnabled"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public isEnabled()J
    .locals 4

    iget-object v0, p0, Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;->this$0:Lcom/android/launcher2/customer/PostPosition;

    # getter for: Lcom/android/launcher2/customer/PostPosition;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/launcher2/customer/PostPosition;->access$400(Lcom/android/launcher2/customer/PostPosition;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.android.app.launcher.prefs.PostPosition"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PostPostionEnabled"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public removeFolderId(Lcom/android/launcher2/customer/PostPosition$CONTAINER;Ljava/lang/String;Z)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;->getFolderKey(Lcom/android/launcher2/customer/PostPosition$CONTAINER;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;->this$0:Lcom/android/launcher2/customer/PostPosition;

    # getter for: Lcom/android/launcher2/customer/PostPosition;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/launcher2/customer/PostPosition;->access$400(Lcom/android/launcher2/customer/PostPosition;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.sec.android.app.launcher.prefs.PostPosition"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v2, "CUSTOMER.PostPosition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeFolderId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removePreloadedFolderId(Lcom/android/launcher2/customer/PostPosition$CONTAINER;Ljava/lang/String;)V
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_Home_PreloadedFolderId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/customer/PostPosition$CONTAINER;->APPS:Lcom/android/launcher2/customer/PostPosition$CONTAINER;

    if-ne p1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_Apps_PreloadedFolderId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;->this$0:Lcom/android/launcher2/customer/PostPosition;

    # getter for: Lcom/android/launcher2/customer/PostPosition;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/launcher2/customer/PostPosition;->access$400(Lcom/android/launcher2/customer/PostPosition;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.sec.android.app.launcher.prefs.PostPosition"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v2, "CUSTOMER.PostPosition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removePreloadedFolderId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public writeFolderId(Lcom/android/launcher2/customer/PostPosition$CONTAINER;Ljava/lang/String;JZ)V
    .locals 5

    invoke-direct {p0, p1, p2, p5}, Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;->getFolderKey(Lcom/android/launcher2/customer/PostPosition$CONTAINER;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;->this$0:Lcom/android/launcher2/customer/PostPosition;

    # getter for: Lcom/android/launcher2/customer/PostPosition;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/launcher2/customer/PostPosition;->access$400(Lcom/android/launcher2/customer/PostPosition;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.sec.android.app.launcher.prefs.PostPosition"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    if-nez p5, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v2, Lcom/android/launcher2/customer/PostPosition$CONTAINER;->HOME:Lcom/android/launcher2/customer/PostPosition$CONTAINER;

    if-ne p1, v2, :cond_1

    const-string v2, "_Home_FolderName"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v2, "CUSTOMER.PostPosition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writeFolderId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v2, "_Apps_FolderName"

    goto :goto_0
.end method

.method public writePreloadedFolderId(Lcom/android/launcher2/customer/PostPosition$CONTAINER;Ljava/lang/String;J)V
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_Home_PreloadedFolderId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/customer/PostPosition$CONTAINER;->APPS:Lcom/android/launcher2/customer/PostPosition$CONTAINER;

    if-ne p1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_Apps_PreloadedFolderId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/customer/PostPosition$SharedPrefInfo;->this$0:Lcom/android/launcher2/customer/PostPosition;

    # getter for: Lcom/android/launcher2/customer/PostPosition;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/launcher2/customer/PostPosition;->access$400(Lcom/android/launcher2/customer/PostPosition;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "com.sec.android.app.launcher.prefs.PostPosition"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v2, "CUSTOMER.PostPosition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "writePreloadedFolderId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/launcher2/customer/PostPosition$CONTAINER;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
