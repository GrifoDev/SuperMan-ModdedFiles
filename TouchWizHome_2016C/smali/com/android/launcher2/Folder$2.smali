.class Lcom/android/launcher2/Folder$2;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Folder;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Folder;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Folder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Folder$2;->this$0:Lcom/android/launcher2/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 8

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v4

    :pswitch_1
    iget-object v5, p0, Lcom/android/launcher2/Folder$2;->this$0:Lcom/android/launcher2/Folder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    # setter for: Lcom/android/launcher2/Folder;->mFolderContainerDragStartTime:J
    invoke-static {v5, v6, v7}, Lcom/android/launcher2/Folder;->access$302(Lcom/android/launcher2/Folder;J)J

    goto :goto_0

    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v5, p0, Lcom/android/launcher2/Folder$2;->this$0:Lcom/android/launcher2/Folder;

    # getter for: Lcom/android/launcher2/Folder;->mFolderContainerDragStartTime:J
    invoke-static {v5}, Lcom/android/launcher2/Folder;->access$300(Lcom/android/launcher2/Folder;)J

    move-result-wide v6

    sub-long v2, v0, v6

    const-wide/16 v6, 0xc8

    cmp-long v5, v2, v6

    if-gez v5, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lcom/android/launcher2/Folder$2;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v5}, Lcom/android/launcher2/Folder;->isFolderOpenAnimationEnded()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/Folder$2;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v5}, Lcom/android/launcher2/Folder;->isOnceExited()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/Folder$2;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v5, v4, v4}, Lcom/android/launcher2/Folder;->close(ZZ)V

    goto :goto_0

    :pswitch_3
    iget-object v5, p0, Lcom/android/launcher2/Folder$2;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v5}, Lcom/android/launcher2/Folder;->isFolderOpenAnimationEnded()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher2/Folder$2;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v5, v4}, Lcom/android/launcher2/Folder;->setOnceExited(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
