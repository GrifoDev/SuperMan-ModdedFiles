.class Landroid/view/ViewRootImpl$1;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private toViewScreenState(I)I
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/view/ViewRootImpl;->-get10()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    iget-object v2, v2, Landroid/view/ViewRootImpl;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "aod_show_state"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    :goto_1
    return v1

    :cond_2
    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 7

    const/4 v6, 0x1

    iget-object v4, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    if-ne v4, p1, :cond_1

    iget-object v4, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v2, v4, Landroid/view/View$AttachInfo;->mDisplayState:I

    iget-object v4, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getState()I

    move-result v0

    if-eq v2, v0, :cond_1

    iget-object v4, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput v0, v4, Landroid/view/View$AttachInfo;->mDisplayState:I

    iget-object v4, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->pokeDrawLockIfNeeded()V

    if-eqz v2, :cond_1

    invoke-direct {p0, v2}, Landroid/view/ViewRootImpl$1;->toViewScreenState(I)I

    move-result v3

    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$1;->toViewScreenState(I)I

    move-result v1

    if-eq v3, v1, :cond_0

    iget-object v4, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    :cond_0
    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v4, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    iput-boolean v6, v4, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    iget-object v4, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    goto :goto_0

    :pswitch_2
    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    invoke-static {}, Landroid/view/ViewRootImpl;->-get10()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v5, 0x40000

    and-int/2addr v4, v5

    if-nez v4, :cond_1

    if-nez p1, :cond_1

    iget-object v4, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    iput-boolean v6, v4, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    iget-object v4, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onDisplayRemoved(I)V
    .locals 3

    iget-object v0, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iget-object v0, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    invoke-static {v0}, Landroid/view/ViewRootImpl;->-get9(Landroid/view/ViewRootImpl;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Surface release in onDisplayRemoved displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " this="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
