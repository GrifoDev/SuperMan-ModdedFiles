.class Lcom/android/settings/search/Index$3;
.super Ljava/lang/Object;
.source "Index.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/search/Index;->updateFromSearchIndexableData(Landroid/provider/SearchIndexableData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/search/Index;

.field final synthetic val$data:Landroid/provider/SearchIndexableData;


# direct methods
.method constructor <init>(Lcom/android/settings/search/Index;Landroid/provider/SearchIndexableData;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/search/Index$3;->this$0:Lcom/android/settings/search/Index;

    iput-object p2, p0, Lcom/android/settings/search/Index$3;->val$data:Landroid/provider/SearchIndexableData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/search/Index$3;->this$0:Lcom/android/settings/search/Index;

    iget-object v1, p0, Lcom/android/settings/search/Index$3;->val$data:Landroid/provider/SearchIndexableData;

    invoke-virtual {v0, v1}, Lcom/android/settings/search/Index;->addIndexableData(Landroid/provider/SearchIndexableData;)V

    iget-object v0, p0, Lcom/android/settings/search/Index$3;->this$0:Lcom/android/settings/search/Index;

    invoke-static {v0}, Lcom/android/settings/search/Index;->-get2(Lcom/android/settings/search/Index;)Lcom/android/settings/search/Index$UpdateData;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/settings/search/Index$UpdateData;->forceUpdate:Z

    iget-object v0, p0, Lcom/android/settings/search/Index$3;->this$0:Lcom/android/settings/search/Index;

    invoke-static {v0}, Lcom/android/settings/search/Index;->-wrap5(Lcom/android/settings/search/Index;)V

    return-void
.end method
