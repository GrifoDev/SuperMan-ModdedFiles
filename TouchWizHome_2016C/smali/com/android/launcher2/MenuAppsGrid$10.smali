.class Lcom/android/launcher2/MenuAppsGrid$10;
.super Ljava/lang/Object;
.source "MenuAppsGrid.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/MenuAppsGrid;->onVisibilityChanged(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mStarted:Z

.field final synthetic this$0:Lcom/android/launcher2/MenuAppsGrid;


# direct methods
.method constructor <init>(Lcom/android/launcher2/MenuAppsGrid;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher2/MenuAppsGrid$10;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/MenuAppsGrid$10;->mStarted:Z

    return-void
.end method


# virtual methods
.method public onDraw()V
    .locals 6

    iget-boolean v1, p0, Lcom/android/launcher2/MenuAppsGrid$10;->mStarted:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher2/MenuAppsGrid$10;->mStarted:Z

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$10;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget-object v2, p0, Lcom/android/launcher2/MenuAppsGrid$10;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    iget-object v2, v2, Lcom/android/launcher2/MenuAppsGrid;->mBuildLayersRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/launcher2/MenuAppsGrid;->postDelayed(Ljava/lang/Runnable;J)Z

    move-object v0, p0

    iget-object v1, p0, Lcom/android/launcher2/MenuAppsGrid$10;->this$0:Lcom/android/launcher2/MenuAppsGrid;

    new-instance v2, Lcom/android/launcher2/MenuAppsGrid$10$1;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher2/MenuAppsGrid$10$1;-><init>(Lcom/android/launcher2/MenuAppsGrid$10;Landroid/view/ViewTreeObserver$OnDrawListener;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher2/MenuAppsGrid;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
