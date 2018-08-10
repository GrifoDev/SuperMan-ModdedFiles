.class Lcom/android/settings/search2/DatabaseIndexingManager$1;
.super Ljava/lang/Object;
.source "DatabaseIndexingManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/search2/DatabaseIndexingManager;->updateFromClassNameResource(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/search2/DatabaseIndexingManager;

.field final synthetic val$res:Landroid/provider/SearchIndexableResource;


# direct methods
.method constructor <init>(Lcom/android/settings/search2/DatabaseIndexingManager;Landroid/provider/SearchIndexableResource;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$1;->this$0:Lcom/android/settings/search2/DatabaseIndexingManager;

    iput-object p2, p0, Lcom/android/settings/search2/DatabaseIndexingManager$1;->val$res:Landroid/provider/SearchIndexableResource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/settings/search2/DatabaseIndexingManager$1;->this$0:Lcom/android/settings/search2/DatabaseIndexingManager;

    iget-object v1, p0, Lcom/android/settings/search2/DatabaseIndexingManager$1;->val$res:Landroid/provider/SearchIndexableResource;

    invoke-virtual {v0, v1}, Lcom/android/settings/search2/DatabaseIndexingManager;->addIndexableData(Landroid/provider/SearchIndexableData;)V

    iget-object v0, p0, Lcom/android/settings/search2/DatabaseIndexingManager$1;->this$0:Lcom/android/settings/search2/DatabaseIndexingManager;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/search2/DatabaseIndexingManager;->updateDatabase(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/search2/DatabaseIndexingManager$1;->val$res:Landroid/provider/SearchIndexableResource;

    iput-boolean v2, v0, Landroid/provider/SearchIndexableResource;->enabled:Z

    return-void
.end method
