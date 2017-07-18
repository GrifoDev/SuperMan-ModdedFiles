.class Lcom/android/launcher2/searchapp/SearchAppListFragment$11$1;
.super Ljava/lang/Object;
.source "SearchAppListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/searchapp/SearchAppListFragment$11;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/searchapp/SearchAppListFragment$11;


# direct methods
.method constructor <init>(Lcom/android/launcher2/searchapp/SearchAppListFragment$11;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$11$1;->this$1:Lcom/android/launcher2/searchapp/SearchAppListFragment$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher2/searchapp/SearchAppListFragment$11$1;->this$1:Lcom/android/launcher2/searchapp/SearchAppListFragment$11;

    iget-object v0, v0, Lcom/android/launcher2/searchapp/SearchAppListFragment$11;->this$0:Lcom/android/launcher2/searchapp/SearchAppListFragment;

    invoke-static {v0}, Lcom/android/launcher2/searchapp/SearchAppListFragment;->access$900(Lcom/android/launcher2/searchapp/SearchAppListFragment;)Lcom/android/launcher2/searchapp/SearchAppController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/searchapp/SearchAppController;->startAsyncTask()V

    return-void
.end method
