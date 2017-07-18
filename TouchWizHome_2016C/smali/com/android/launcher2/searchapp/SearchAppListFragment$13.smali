.class Lcom/android/launcher2/searchapp/SearchAppListFragment$13;
.super Landroid/os/ResultReceiver;
.source "SearchAppListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/searchapp/SearchAppListFragment;->closeKeyboard(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;


# direct methods
.method constructor <init>(Lcom/android/launcher2/searchapp/SearchAppListFragment;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$13;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$13;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-static {v0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$000(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Landroid/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    :cond_0
    return-void
.end method
