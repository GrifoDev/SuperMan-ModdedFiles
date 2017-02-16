.class public Lcom/android/settings/autostarts/AppItem;
.super Ljava/lang/Object;
.source "AppItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public appName:Ljava/lang/String;

.field public checked:Z

.field public icon:Landroid/graphics/drawable/Drawable;

.field public isSystem:I

.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/android/settings/autostarts/AppItem;->checked:Z

    iput-object p3, p0, Lcom/android/settings/autostarts/AppItem;->packageName:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/autostarts/AppItem;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v1, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/autostarts/AppItem;->appName:Ljava/lang/String;

    iget-object v0, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/settings/autostarts/AppItem;->isSystem:I

    invoke-virtual {v0, v6}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/autostarts/AppItem;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Lcom/android/settings/autostarts/AppItem;->appName:Ljava/lang/String;

    if-nez v7, :cond_0

    const-string v7, ""

    iput-object v7, p0, Lcom/android/settings/autostarts/AppItem;->appName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/autostarts/AppItem;)I
    .locals 2

    iget-object v0, p0, Lcom/android/settings/autostarts/AppItem;->appName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/settings/autostarts/AppItem;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/android/settings/autostarts/AppItem;

    invoke-virtual {p0, p1}, Lcom/android/settings/autostarts/AppItem;->compareTo(Lcom/android/settings/autostarts/AppItem;)I

    move-result v0

    return v0
.end method
