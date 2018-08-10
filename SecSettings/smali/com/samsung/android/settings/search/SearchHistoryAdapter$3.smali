.class Lcom/samsung/android/settings/search/SearchHistoryAdapter$3;
.super Ljava/lang/Object;
.source "SearchHistoryAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/search/SearchHistoryAdapter;->setRecentDeleteAllButton(Landroid/view/View;Landroid/database/Cursor;)V
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

    iput-object p1, p0, Lcom/samsung/android/settings/search/SearchHistoryAdapter$3;->this$0:Lcom/samsung/android/settings/search/SearchHistoryAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/SearchHistoryAdapter$3;->this$0:Lcom/samsung/android/settings/search/SearchHistoryAdapter;

    invoke-static {v0}, Lcom/samsung/android/settings/search/SearchHistoryAdapter;->-get0(Lcom/samsung/android/settings/search/SearchHistoryAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/search/model/SecIndexModel;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/search/model/SecIndexModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/search/model/SecIndexModel;->deleteAllRecentSearchItem()I

    iget-object v0, p0, Lcom/samsung/android/settings/search/SearchHistoryAdapter$3;->this$0:Lcom/samsung/android/settings/search/SearchHistoryAdapter;

    invoke-static {v0}, Lcom/samsung/android/settings/search/SearchHistoryAdapter;->-get1(Lcom/samsung/android/settings/search/SearchHistoryAdapter;)Lcom/samsung/android/settings/search/SearchHistoryAdapter$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/settings/search/SearchHistoryAdapter$Listener;->onItemDeleted()V

    return-void
.end method
