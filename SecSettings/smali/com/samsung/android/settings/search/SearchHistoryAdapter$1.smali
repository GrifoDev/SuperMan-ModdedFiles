.class Lcom/samsung/android/settings/search/SearchHistoryAdapter$1;
.super Ljava/lang/Object;
.source "SearchHistoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/search/SearchHistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/search/SearchHistoryAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/search/SearchHistoryAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/search/SearchHistoryAdapter$1;->this$0:Lcom/samsung/android/settings/search/SearchHistoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/search/SearchHistoryAdapter$1;->this$0:Lcom/samsung/android/settings/search/SearchHistoryAdapter;

    invoke-static {v0}, Lcom/samsung/android/settings/search/SearchHistoryAdapter;->-get1(Lcom/samsung/android/settings/search/SearchHistoryAdapter;)Lcom/samsung/android/settings/search/SearchHistoryAdapter$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/search/SearchHistoryAdapter$1;->this$0:Lcom/samsung/android/settings/search/SearchHistoryAdapter;

    invoke-static {v0}, Lcom/samsung/android/settings/search/SearchHistoryAdapter;->-get1(Lcom/samsung/android/settings/search/SearchHistoryAdapter;)Lcom/samsung/android/settings/search/SearchHistoryAdapter$Listener;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-interface {v1, v0}, Lcom/samsung/android/settings/search/SearchHistoryAdapter$Listener;->onKeywordSelected(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method
