.class Lcom/android/launcher2/MenuAppsSearch$16;
.super Ljava/lang/Object;
.source "MenuAppsSearch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsSearch;->initialiseGalaxyAppSearch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/MenuAppsSearch;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsSearch;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsSearch$16;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch$16;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    iget-object v0, v0, Lcom/android/launcher2/MenuAppsSearch;->galaxyItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch$16;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher2/MenuAppsSearch;->access$1000(Lcom/android/launcher2/MenuAppsSearch;Z)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "com.sec.android.app.samsungapps"

    invoke-static {v0}, Lcom/android/launcher2/MenuAppsSearch;->isAppInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.sec.android.app.samsungapps"

    invoke-static {v0}, Lcom/android/launcher2/MenuAppsSearch;->isLauncherCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch$16;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    invoke-static {v0}, Lcom/android/launcher2/MenuAppsSearch;->access$1900(Lcom/android/launcher2/MenuAppsSearch;)V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/MenuAppsSearch$16;->this$0:Lcom/android/launcher2/MenuAppsSearch;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher2/MenuAppsSearch;->access$1000(Lcom/android/launcher2/MenuAppsSearch;Z)V

    goto :goto_0
.end method
