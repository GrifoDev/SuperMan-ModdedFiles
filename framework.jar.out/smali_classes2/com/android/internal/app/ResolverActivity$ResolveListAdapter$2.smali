.class Lcom/android/internal/app/ResolverActivity$ResolveListAdapter$2;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->postListReadyRunnable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter$2;->this$1:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter$2;->this$1:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->setTitleAndIcon()V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter$2;->this$1:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->resetAlwaysOrOnceButtonBar()V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter$2;->this$1:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-static {v0}, Lcom/android/internal/app/ResolverActivity;->-get9(Lcom/android/internal/app/ResolverActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter$2;->this$1:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->onListRebuilt()V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter$2;->this$1:Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/app/ResolverActivity;->-set4(Lcom/android/internal/app/ResolverActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
