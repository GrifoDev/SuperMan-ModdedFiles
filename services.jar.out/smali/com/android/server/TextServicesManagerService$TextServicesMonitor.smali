.class final Lcom/android/server/TextServicesManagerService$TextServicesMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "TextServicesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TextServicesManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TextServicesMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TextServicesManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/TextServicesManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/TextServicesManagerService;Lcom/android/server/TextServicesManagerService$TextServicesMonitor;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;-><init>(Lcom/android/server/TextServicesManagerService;)V

    return-void
.end method

.method private isChangingPackagesOfCurrentUser()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->getChangingUserId()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v2}, Lcom/android/server/TextServicesManagerService;->-get2(Lcom/android/server/TextServicesManagerService;)Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/TextServicesManagerService$TextServicesSettings;->getCurrentUserId()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onSomePackagesChanged()V
    .locals 8

    invoke-direct {p0}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->isChangingPackagesOfCurrentUser()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v3}, Lcom/android/server/TextServicesManagerService;->-get5(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v3}, Lcom/android/server/TextServicesManagerService;->-get1(Lcom/android/server/TextServicesManagerService;)Landroid/content/Context;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v5}, Lcom/android/server/TextServicesManagerService;->-get4(Lcom/android/server/TextServicesManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v6}, Lcom/android/server/TextServicesManagerService;->-get5(Lcom/android/server/TextServicesManagerService;)Ljava/util/HashMap;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v7}, Lcom/android/server/TextServicesManagerService;->-get2(Lcom/android/server/TextServicesManagerService;)Lcom/android/server/TextServicesManagerService$TextServicesSettings;

    move-result-object v7

    invoke-static {v3, v5, v6, v7}, Lcom/android/server/TextServicesManagerService;->-wrap1(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;Lcom/android/server/TextServicesManagerService$TextServicesSettings;)V

    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/TextServicesManagerService;->getCurrentSpellChecker(Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_1

    monitor-exit v4

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/4 v3, 0x2

    if-ne v0, v3, :cond_4

    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-static {v3, v1}, Lcom/android/server/TextServicesManagerService;->-wrap0(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->this$0:Lcom/android/server/TextServicesManagerService;

    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/TextServicesManagerService;->-wrap2(Lcom/android/server/TextServicesManagerService;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit v4

    return-void

    :cond_4
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/android/server/TextServicesManagerService$TextServicesMonitor;->isPackageModified(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
