.class Landroid/support/v7/app/ToolbarActionBar$1;
.super Ljava/lang/Object;
.source "ToolbarActionBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/ToolbarActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/app/ToolbarActionBar;


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/app/ToolbarActionBar$1;->this$0:Landroid/support/v7/app/ToolbarActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ToolbarActionBar;->populateOptionsMenu()V

    return-void
.end method
