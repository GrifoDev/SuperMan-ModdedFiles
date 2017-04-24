.class Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageManagerReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

.field private user:I


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;->user:I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "AlarmManagerEXT"

    const-string/jumbo v2, "PackageManagerReceiver is created."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method constructor <init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/content/Context;Landroid/os/UserHandle;)V
    .locals 6

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;->user:I

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iput v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;->user:I

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    move-object v0, p2

    move-object v1, p0

    move-object v2, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "AlarmManagerEXT"

    const-string/jumbo v1, "PackageManagerReceiver is created as SecureFolder Receiver."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public clear(Landroid/content/Context;)V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;->user:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public initInstalledPackagesAsUser(II)V
    .locals 6

    new-instance v0, Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Z)V

    new-instance v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$1;

    invoke-direct {v2, p0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$1;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;I)V

    int-to-long v4, p2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v1

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v6}, Landroid/os/Handler;-><init>(Z)V

    iget v1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;->user:I

    new-instance v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$3;

    invoke-direct {v4, p0, v3, v1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$3;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;Landroid/net/Uri;I)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    const-string/jumbo v4, "android.intent.extra.UID"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, v6}, Landroid/os/Handler;-><init>(Z)V

    new-instance v4, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$4;

    invoke-direct {v4, p0, v3, v2}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$4;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;Landroid/net/Uri;I)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public removeInstalledPackageAsUser(I)V
    .locals 3

    new-instance v0, Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Z)V

    new-instance v2, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$2;

    invoke-direct {v2, p0, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver$2;-><init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$PackageManagerReceiver;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    return-void
.end method
