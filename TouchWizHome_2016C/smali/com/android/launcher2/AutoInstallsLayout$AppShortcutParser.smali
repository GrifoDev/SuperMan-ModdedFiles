.class public Lcom/android/launcher2/AutoInstallsLayout$AppShortcutParser;
.super Ljava/lang/Object;
.source "AutoInstallsLayout.java"

# interfaces
.implements Lcom/android/launcher2/AutoInstallsLayout$TagParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/AutoInstallsLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AppShortcutParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/AutoInstallsLayout;


# direct methods
.method protected constructor <init>(Lcom/android/launcher2/AutoInstallsLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/AutoInstallsLayout$AppShortcutParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected invalidPackageOrClass(Landroid/content/res/XmlResourceParser;)J
    .locals 2

    const-string v0, "AutoInstalls"

    const-string v1, "Skipping invalid <favorite> with no component"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public parseAndAdd(Landroid/content/res/XmlResourceParser;)J
    .locals 11

    const-string v8, "packageName"

    invoke-static {p1, v8}, Lcom/android/launcher2/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "className"

    invoke-static {p1, v8}, Lcom/android/launcher2/AutoInstallsLayout;->getAttributeValue(Landroid/content/res/XmlResourceParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    :try_start_0
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v6, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/launcher2/AutoInstallsLayout$AppShortcutParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    iget-object v8, v8, Lcom/android/launcher2/AutoInstallsLayout;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v1, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    :goto_0
    :try_start_1
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v8

    const/high16 v9, 0x10200000

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v4

    iget-object v8, p0, Lcom/android/launcher2/AutoInstallsLayout$AppShortcutParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    iget-object v9, p0, Lcom/android/launcher2/AutoInstallsLayout$AppShortcutParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    iget-object v9, v9, Lcom/android/launcher2/AutoInstallsLayout;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v9}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v4, v10}, Lcom/android/launcher2/AutoInstallsLayout;->addShortcut(Ljava/lang/String;Landroid/content/Intent;I)J

    move-result-wide v8

    :goto_1
    return-wide v8

    :catch_0
    move-exception v5

    iget-object v8, p0, Lcom/android/launcher2/AutoInstallsLayout$AppShortcutParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    iget-object v8, v8, Lcom/android/launcher2/AutoInstallsLayout;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    new-instance v1, Landroid/content/ComponentName;

    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-direct {v1, v8, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/launcher2/AutoInstallsLayout$AppShortcutParser;->this$0:Lcom/android/launcher2/AutoInstallsLayout;

    iget-object v8, v8, Lcom/android/launcher2/AutoInstallsLayout;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v1, v9}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v8, "AutoInstalls"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unable to add favorite: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v8, -0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AutoInstallsLayout$AppShortcutParser;->invalidPackageOrClass(Landroid/content/res/XmlResourceParser;)J

    move-result-wide v8

    goto :goto_1
.end method
