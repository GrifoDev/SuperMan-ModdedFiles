.class Landroid/widget/ProgressBar$RefreshProgressRunnable;
.super Ljava/lang/Object;
.source "ProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshProgressRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ProgressBar;


# direct methods
.method private constructor <init>(Landroid/widget/ProgressBar;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ProgressBar;Landroid/widget/ProgressBar$RefreshProgressRunnable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ProgressBar$RefreshProgressRunnable;-><init>(Landroid/widget/ProgressBar;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v9, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    monitor-enter v9

    :try_start_0
    iget-object v0, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    invoke-static {v0}, Landroid/widget/ProgressBar;->-get0(Landroid/widget/ProgressBar;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_0

    iget-object v0, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    invoke-static {v0}, Landroid/widget/ProgressBar;->-get0(Landroid/widget/ProgressBar;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/widget/ProgressBar$RefreshData;

    iget-object v0, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    iget v1, v8, Landroid/widget/ProgressBar$RefreshData;->id:I

    iget v2, v8, Landroid/widget/ProgressBar$RefreshData;->progress:I

    iget-boolean v3, v8, Landroid/widget/ProgressBar$RefreshData;->fromUser:Z

    iget-boolean v5, v8, Landroid/widget/ProgressBar$RefreshData;->animate:Z

    const/4 v4, 0x1

    invoke-static/range {v0 .. v5}, Landroid/widget/ProgressBar;->-wrap0(Landroid/widget/ProgressBar;IIZZZ)V

    invoke-virtual {v8}, Landroid/widget/ProgressBar$RefreshData;->recycle()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    invoke-static {v0}, Landroid/widget/ProgressBar;->-get0(Landroid/widget/ProgressBar;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Landroid/widget/ProgressBar$RefreshProgressRunnable;->this$0:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/ProgressBar;->-set0(Landroid/widget/ProgressBar;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0
.end method
