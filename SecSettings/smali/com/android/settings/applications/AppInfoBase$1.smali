.class Lcom/android/settings/applications/AppInfoBase$1;
.super Landroid/content/BroadcastReceiver;
.source "AppInfoBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppInfoBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/AppInfoBase;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/AppInfoBase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/AppInfoBase$1;->this$0:Lcom/android/settings/applications/AppInfoBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase$1;->this$0:Lcom/android/settings/applications/AppInfoBase;

    iget-boolean v1, v1, Lcom/android/settings/applications/AppInfoBase;->mFinishing:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase$1;->this$0:Lcom/android/settings/applications/AppInfoBase;

    iget-object v1, v1, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase$1;->this$0:Lcom/android/settings/applications/AppInfoBase;

    invoke-virtual {v1}, Lcom/android/settings/applications/AppInfoBase;->onPackageRemoved()V

    :cond_0
    return-void
.end method
