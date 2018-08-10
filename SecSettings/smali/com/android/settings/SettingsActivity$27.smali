.class Lcom/android/settings/SettingsActivity$27;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsActivity;->initSearchableInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SettingsActivity$27;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string/jumbo v5, "runable searchableInfo"

    invoke-static {v5}, Lcom/samsung/android/settingslib/Log;->beginSection(Ljava/lang/String;)V

    :try_start_0
    iget-object v5, p0, Lcom/android/settings/SettingsActivity$27;->this$0:Lcom/android/settings/SettingsActivity;

    const-string/jumbo v6, "search"

    invoke-virtual {v5, v6}, Lcom/android/settings/SettingsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/SearchManager;

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/android/settings/SettingsActivity$27;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v5}, Lcom/android/settings/SettingsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/SettingsActivity$27;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "Settings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "packageName : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " className : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/settingslib/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class v5, Lcom/android/settings/Settings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/settings/SettingsActivity$27;->this$0:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v4, v1}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/settings/SettingsActivity;->-set2(Lcom/android/settings/SettingsActivity;Landroid/app/SearchableInfo;)Landroid/app/SearchableInfo;

    :cond_0
    iget-object v5, p0, Lcom/android/settings/SettingsActivity$27;->this$0:Lcom/android/settings/SettingsActivity;

    new-instance v6, Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/android/settings/SettingsActivity$27;->this$0:Lcom/android/settings/SettingsActivity;

    const-class v8, Lcom/samsung/android/settings/search/SecSearchActivity;

    invoke-direct {v6, v7, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v6}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/settings/SettingsActivity;->-set3(Lcom/android/settings/SettingsActivity;Landroid/app/SearchableInfo;)Landroid/app/SearchableInfo;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/android/settingslib/Log;->endSection()V

    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0
.end method
