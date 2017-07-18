.class public Lcom/android/launcher2/compat/UserManagerCompatVL;
.super Lcom/android/launcher2/compat/UserManagerCompatV17;
.source "UserManagerCompatVL.java"


# static fields
.field private static final USER_CREATION_TIME_KEY:Ljava/lang/String; = "user_creation_time_"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher2/compat/UserManagerCompatV17;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/compat/UserManagerCompatVL;->mPm:Landroid/content/pm/PackageManager;

    iput-object p1, p0, Lcom/android/launcher2/compat/UserManagerCompatVL;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getBadgedDrawableForUser(Landroid/graphics/drawable/Drawable;Lcom/android/launcher2/compat/UserHandleCompat;)Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/compat/UserManagerCompatVL;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2}, Lcom/android/launcher2/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getBadgedLabelForUser(Ljava/lang/CharSequence;Lcom/android/launcher2/compat/UserHandleCompat;)Ljava/lang/CharSequence;
    .locals 2

    if-nez p2, :cond_0

    :goto_0
    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/compat/UserManagerCompatVL;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2}, Lcom/android/launcher2/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0
.end method

.method public getUserCreationTime(Lcom/android/launcher2/compat/UserHandleCompat;)J
    .locals 6

    iget-object v2, p0, Lcom/android/launcher2/compat/UserManagerCompatVL;->mContext:Landroid/content/Context;

    const-string v3, "com.sec.android.app.launcher.prefs"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "user_creation_time_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/launcher2/compat/UserManagerCompatVL;->getSerialNumberForUser(Lcom/android/launcher2/compat/UserHandleCompat;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    const-wide/16 v2, 0x0

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public getUserProfiles()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/compat/UserHandleCompat;",
            ">;"
        }
    .end annotation

    iget-object v4, p0, Lcom/android/launcher2/compat/UserManagerCompatVL;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v4}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getInst()Lcom/android/launcher2/LauncherApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->isKnoxMode()Z

    move-result v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/launcher2/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/launcher2/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_3
    invoke-static {v2}, Lcom/android/launcher2/compat/UserHandleCompat;->fromUser(Landroid/os/UserHandle;)Lcom/android/launcher2/compat/UserHandleCompat;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public isUserUnlocked(Lcom/android/launcher2/compat/UserHandleCompat;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/compat/UserManagerCompatVL;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Lcom/android/launcher2/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method
