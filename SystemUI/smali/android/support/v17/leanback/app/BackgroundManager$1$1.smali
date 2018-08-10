.class Landroid/support/v17/leanback/app/BackgroundManager$1$1;
.super Ljava/lang/Object;
.source "BackgroundManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/app/BackgroundManager$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v17/leanback/app/BackgroundManager$1;


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/app/BackgroundManager$1$1;->this$1:Landroid/support/v17/leanback/app/BackgroundManager$1;

    iget-object v0, v0, Landroid/support/v17/leanback/app/BackgroundManager$1;->this$0:Landroid/support/v17/leanback/app/BackgroundManager;

    invoke-virtual {v0}, Landroid/support/v17/leanback/app/BackgroundManager;->postChangeRunnable()V

    return-void
.end method
