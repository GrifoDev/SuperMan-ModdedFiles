.class Lcom/android/server/vr/VrManagerService$4;
.super Landroid/content/BroadcastReceiver;
.source "VrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/vr/VrManagerService;->setEnabledStatusOfVrComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/VrManagerService;

.field final synthetic val$vrComponentPackageNames:Landroid/util/ArraySet;

.field final synthetic val$vrComponents:Landroid/util/ArraySet;


# direct methods
.method constructor <init>(Lcom/android/server/vr/VrManagerService;Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    iput-object p2, p0, Lcom/android/server/vr/VrManagerService$4;->val$vrComponentPackageNames:Landroid/util/ArraySet;

    iput-object p3, p0, Lcom/android/server/vr/VrManagerService$4;->val$vrComponents:Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const/16 v4, 0x4000

    :try_start_0
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    iget-object v5, p0, Lcom/android/server/vr/VrManagerService$4;->val$vrComponentPackageNames:Landroid/util/ArraySet;

    iget-object v6, p0, Lcom/android/server/vr/VrManagerService$4;->val$vrComponents:Landroid/util/ArraySet;

    invoke-static {v4, v3, v1, v5, v6}, Lcom/android/server/vr/VrManagerService;->-wrap0(Lcom/android/server/vr/VrManagerService;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;Landroid/util/ArraySet;Landroid/util/ArraySet;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
