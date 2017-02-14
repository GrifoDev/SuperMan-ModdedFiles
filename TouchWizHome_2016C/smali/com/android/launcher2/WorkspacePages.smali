.class Lcom/android/launcher2/WorkspacePages;
.super Ljava/lang/Object;
.source "WorkspacePages.java"


# static fields
.field private static final PREFERENCES_EMPTYPAGES:Ljava/lang/String; = "emptypages"

.field private static mPages:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addPageAt(ILandroid/content/Context;)Z
    .locals 5

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/launcher2/WorkspacePages;->readPreferences(Landroid/content/Context;)V

    if-ltz p0, :cond_0

    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v2, v2

    if-lt p0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    new-array v0, v2, [Z

    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    invoke-static {v2, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-boolean v1, v0, p0

    array-length v1, v0

    add-int/lit8 v2, p0, 0x1

    if-le v1, v2, :cond_2

    sget-object v1, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    add-int/lit8 v2, p0, 0x1

    array-length v3, v0

    add-int/lit8 v4, p0, 0x1

    sub-int/2addr v3, v4

    invoke-static {v1, p0, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    sput-object v0, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    invoke-static {p1}, Lcom/android/launcher2/WorkspacePages;->writePreferences(Landroid/content/Context;)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method static deletePageAt(ILandroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/android/launcher2/WorkspacePages;->readPreferences(Landroid/content/Context;)V

    if-ltz p0, :cond_0

    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v2, v2

    if-lt p0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    new-array v0, v2, [Z

    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    invoke-static {v2, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v0

    if-le v1, p0, :cond_2

    sget-object v1, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    add-int/lit8 v2, p0, 0x1

    array-length v3, v0

    sub-int/2addr v3, p0

    invoke-static {v1, v2, v0, p0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    sput-object v0, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    invoke-static {p1}, Lcom/android/launcher2/WorkspacePages;->writePreferences(Landroid/content/Context;)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method static itemAddedToPage(ILandroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/android/launcher2/WorkspacePages;->readPreferences(Landroid/content/Context;)V

    if-ltz p0, :cond_0

    sget-object v1, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v1, v1

    if-lt p0, v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    sget-object v1, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    aget-boolean v1, v1, p0

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    aput-boolean v0, v1, p0

    invoke-static {p1}, Lcom/android/launcher2/WorkspacePages;->writePreferences(Landroid/content/Context;)V

    goto :goto_0
.end method

.method static movePage(IILandroid/content/Context;)Z
    .locals 5

    invoke-static {p2}, Lcom/android/launcher2/WorkspacePages;->readPreferences(Landroid/content/Context;)V

    if-ltz p0, :cond_0

    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v2, v2

    if-ge p0, v2, :cond_0

    if-ltz p1, :cond_0

    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v2, v2

    if-lt p1, v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    if-eq p0, p1, :cond_4

    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    aget-boolean v0, v2, p0

    if-ge p0, p1, :cond_2

    move v1, p0

    :goto_1
    if-ge v1, p1, :cond_3

    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    sget-object v3, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    add-int/lit8 v4, v1, 0x1

    aget-boolean v3, v3, v4

    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, p0

    :goto_2
    if-le v1, p1, :cond_3

    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    sget-object v3, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    add-int/lit8 v4, v1, -0x1

    aget-boolean v3, v3, v4

    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    aput-boolean v0, v2, p1

    invoke-static {p2}, Lcom/android/launcher2/WorkspacePages;->writePreferences(Landroid/content/Context;)V

    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method static pageHasAlwaysBeenEmpty(ILandroid/content/Context;)Z
    .locals 1

    invoke-static {p1}, Lcom/android/launcher2/WorkspacePages;->readPreferences(Landroid/content/Context;)V

    if-ltz p0, :cond_0

    sget-object v0, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    aget-boolean v0, v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static readPreferences(Landroid/content/Context;)V
    .locals 8

    const/4 v5, 0x0

    sget-object v4, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    if-eqz v4, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getScreenCount()I

    move-result v2

    sget-boolean v4, Lcom/android/launcher2/LauncherApplication;->sFestivalPageLauncher:Z

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->getFestivalScreenCount()I

    move-result v4

    add-int/2addr v2, v4

    :cond_2
    add-int/lit8 v4, v2, 0x1

    new-array v4, v4, [Z

    sput-object v4, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    const/4 v0, 0x0

    :goto_0
    sget-object v4, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v4, v4

    if-ge v0, v4, :cond_3

    sget-object v4, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    aput-boolean v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const-string v4, "com.sec.android.app.launcher.prefs"

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v6, "emptypages"

    const-string v7, ""

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sget-object v6, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v6, v6

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_5

    sget-object v6, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v7, 0x74

    if-ne v4, v7, :cond_4

    const/4 v4, 0x1

    :goto_2
    aput-boolean v4, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v4, v5

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_3
    sget-object v4, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v4, v4

    if-ge v0, v4, :cond_0

    sget-object v4, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    aput-boolean v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method private static writePreferences(Landroid/content/Context;)V
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    sget-object v3, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_1

    sget-object v3, Lcom/android/launcher2/WorkspacePages;->mPages:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_0

    const/16 v3, 0x74

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0x66

    goto :goto_1

    :cond_1
    const-string v3, "com.sec.android.app.launcher.prefs"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v3, "emptypages"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
