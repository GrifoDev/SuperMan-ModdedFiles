.class Lcom/samsung/android/settings/search/SecSearchResultsSummary$1$1;
.super Ljava/lang/Object;
.source "SecSearchResultsSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->initSearchView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1$1;->this$1:Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1$1;->this$1:Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;

    iget-object v0, v0, Lcom/samsung/android/settings/search/SecSearchResultsSummary$1;->this$0:Lcom/samsung/android/settings/search/SecSearchResultsSummary;

    invoke-virtual {v0}, Lcom/samsung/android/settings/search/SecSearchResultsSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method
