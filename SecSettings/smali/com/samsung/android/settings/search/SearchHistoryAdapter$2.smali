.class Lcom/samsung/android/settings/search/SearchHistoryAdapter$2;
.super Ljava/lang/Object;
.source "SearchHistoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/search/SearchHistoryAdapter;->setRecentDeleteButton(Landroid/view/View;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/search/SearchHistoryAdapter;

.field final synthetic val$id:J


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/search/SearchHistoryAdapter;J)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/search/SearchHistoryAdapter$2;->this$0:Lcom/samsung/android/settings/search/SearchHistoryAdapter;

    iput-wide p2, p0, Lcom/samsung/android/settings/search/SearchHistoryAdapter$2;->val$id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/search/SearchHistoryAdapter$2;->this$0:Lcom/samsung/android/settings/search/SearchHistoryAdapter;

    invoke-static {v0}, Lcom/samsung/android/settings/search/SearchHistoryAdapter;->-get0(Lcom/samsung/android/settings/search/SearchHistoryAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/search/model/SecIndexModel;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/search/model/SecIndexModel;

    move-result-object v0

    iget-wide v2, p0, Lcom/samsung/android/settings/search/SearchHistoryAdapter$2;->val$id:J

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/settings/search/model/SecIndexModel;->deletRecentSearchItem(J)I

    iget-object v0, p0, Lcom/samsung/android/settings/search/SearchHistoryAdapter$2;->this$0:Lcom/samsung/android/settings/search/SearchHistoryAdapter;

    invoke-static {v0}, Lcom/samsung/android/settings/search/SearchHistoryAdapter;->-get1(Lcom/samsung/android/settings/search/SearchHistoryAdapter;)Lcom/samsung/android/settings/search/SearchHistoryAdapter$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/settings/search/SearchHistoryAdapter$Listener;->onItemDeleted()V

    return-void
.end method
