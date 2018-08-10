.class Lcom/absolute/android/persistservice/c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/absolute/android/persistservice/ABTPersistenceService;


# direct methods
.method private constructor <init>(Lcom/absolute/android/persistservice/ABTPersistenceService;)V
    .locals 0

    iput-object p1, p0, Lcom/absolute/android/persistservice/c;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/absolute/android/persistservice/ABTPersistenceService;Lcom/absolute/android/persistservice/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/c;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;)V

    return-void
.end method

.method private a()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/absolute/android/persistservice/c;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v1}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(Lcom/absolute/android/persistservice/ABTPersistenceService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/absolute/android/persistservice/c;->a()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_3

    :cond_2
    iget-object v9, p0, Lcom/absolute/android/persistservice/c;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v9}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/ABTPersistenceService;)Lcom/absolute/android/persistservice/v;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Directory "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " is not mounted or not accessible."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/absolute/android/utils/DeviceUtil;->getManufacturer()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "samsung"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x0

    :goto_1
    invoke-static {v9}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Z)Z

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b()Z

    move-result v9

    if-nez v9, :cond_5

    :goto_2
    iget-object v9, p0, Lcom/absolute/android/persistservice/c;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/ABTPersistenceService;Z)V

    iget-object v9, p0, Lcom/absolute/android/persistservice/c;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    iget-boolean v9, v9, Lcom/absolute/android/persistservice/ABTPersistenceService;->a:Z

    if-nez v9, :cond_6

    :goto_3
    iget-object v9, p0, Lcom/absolute/android/persistservice/c;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v9}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Lcom/absolute/android/persistservice/ABTPersistenceService;)Lcom/absolute/android/persistservice/k;

    move-result-object v9

    invoke-virtual {v9}, Lcom/absolute/android/persistservice/k;->b()I

    move-result v9

    if-nez v9, :cond_0

    const/16 v2, 0x258

    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v9

    if-nez v9, :cond_7

    :goto_4
    iget-object v9, p0, Lcom/absolute/android/persistservice/c;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v9}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/ABTPersistenceService;)Lcom/absolute/android/persistservice/v;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Total duration for sending PS_READY set to : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V

    if-lez v2, :cond_0

    iget-object v9, p0, Lcom/absolute/android/persistservice/c;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v9, v2}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/ABTPersistenceService;I)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_2

    :cond_4
    const/4 v9, 0x1

    goto :goto_1

    :cond_5
    :try_start_1
    iget-object v9, p0, Lcom/absolute/android/persistservice/c;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v9}, Lcom/absolute/android/persistservice/ABTPersistenceService;->c(Lcom/absolute/android/persistservice/ABTPersistenceService;)Landroid/content/Context;

    move-result-object v9

    const-string/jumbo v10, "power"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Directory "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " is not mounted or not accessible."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v3

    iget-object v9, p0, Lcom/absolute/android/persistservice/c;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v9}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/ABTPersistenceService;)Lcom/absolute/android/persistservice/v;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Failed to reboot due to no access to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ". Got exception: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v3}, Lcom/absolute/android/persistservice/v;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_6
    iget-object v9, p0, Lcom/absolute/android/persistservice/c;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/absolute/android/persistservice/ABTPersistenceService;->b(Lcom/absolute/android/persistservice/ABTPersistenceService;Z)V

    goto/16 :goto_3

    :cond_7
    :try_start_2
    new-instance v9, Lcom/absolute/android/persistservice/b;

    iget-object v10, p0, Lcom/absolute/android/persistservice/c;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-direct {v9, v10}, Lcom/absolute/android/persistservice/b;-><init>(Lcom/absolute/android/persistservice/ABTPersistenceService;)V

    invoke-virtual {v4, v9}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_9

    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_9
    array-length v9, v5

    if-lez v9, :cond_8

    move-object v6, v5

    array-length v7, v5

    const/4 v8, 0x0

    :goto_5
    if-lt v8, v7, :cond_a

    const v2, 0x15180

    goto/16 :goto_4

    :cond_a
    aget-object v0, v5, v8

    iget-object v9, p0, Lcom/absolute/android/persistservice/c;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v9}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/ABTPersistenceService;)Lcom/absolute/android/persistservice/v;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Absolute pre-install App: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/absolute/android/persistservice/v;->c(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :catch_1
    move-exception v4

    iget-object v9, p0, Lcom/absolute/android/persistservice/c;->a:Lcom/absolute/android/persistservice/ABTPersistenceService;

    invoke-static {v9}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a(Lcom/absolute/android/persistservice/ABTPersistenceService;)Lcom/absolute/android/persistservice/v;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Exception checking for pre-install apps: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/absolute/android/persistservice/v;->b(Ljava/lang/String;)V

    goto/16 :goto_4
.end method
