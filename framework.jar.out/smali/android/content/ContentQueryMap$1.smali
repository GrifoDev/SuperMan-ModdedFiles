.class Landroid/content/ContentQueryMap$1;
.super Landroid/database/ContentObserver;
.source "ContentQueryMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/ContentQueryMap;->setKeepUpdated(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/ContentQueryMap;


# direct methods
.method constructor <init>(Landroid/content/ContentQueryMap;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Landroid/content/ContentQueryMap;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 98
    iput-object p1, p0, Landroid/content/ContentQueryMap$1;->this$0:Landroid/content/ContentQueryMap;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 104
    iget-object v0, p0, Landroid/content/ContentQueryMap$1;->this$0:Landroid/content/ContentQueryMap;

    invoke-virtual {v0}, Ljava/util/Observable;->countObservers()I

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Landroid/content/ContentQueryMap$1;->this$0:Landroid/content/ContentQueryMap;

    invoke-virtual {v0}, Landroid/content/ContentQueryMap;->requery()V

    .line 100
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Landroid/content/ContentQueryMap$1;->this$0:Landroid/content/ContentQueryMap;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/content/ContentQueryMap;->-set0(Landroid/content/ContentQueryMap;Z)Z

    goto :goto_0
.end method
