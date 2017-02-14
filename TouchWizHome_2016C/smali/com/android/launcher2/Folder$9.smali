.class Lcom/android/launcher2/Folder$9;
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

    iput-object p1, p0, Lcom/android/launcher2/Folder$9;->this$0:Lcom/android/launcher2/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 4

    const/4 v2, 0x1

    invoke-static {p2}, Lcom/android/launcher2/Launcher;->isInValidDragState(Landroid/view/DragEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    move v1, v2

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/Folder$9;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->isFolderOpenAnimationEnded()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/Folder$9;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->isOnceExited()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher2/Folder$9;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v1, v2, v2}, Lcom/android/launcher2/Folder;->close(ZZ)V

    :cond_2
    invoke-static {}, Lcom/android/launcher2/LauncherFeature;->supportQuickOptions()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/DragState;

    move-object v0, v1

    :goto_2
    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher2/AppIconView;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->getQuickOptionsPopup()Lcom/android/launcher2/QuickOptionsPopup;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "Launcher.Folder"

    const-string v3, "onDragEvent: Dismiss Quick Options Popup on ACTION_DRAG_ENTERED."

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/launcher2/DragState;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/AppIconView;

    invoke-virtual {v1}, Lcom/android/launcher2/AppIconView;->getQuickOptionsPopup()Lcom/android/launcher2/QuickOptionsPopup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/QuickOptionsPopup;->dismiss()V

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/android/launcher2/Launcher;->dragstate:Lcom/android/launcher2/DragState;

    goto :goto_2

    :pswitch_2
    iget-object v1, p0, Lcom/android/launcher2/Folder$9;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v1}, Lcom/android/launcher2/Folder;->isFolderOpenAnimationEnded()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher2/Folder$9;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Folder;->setOnceExited(Z)V

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Lcom/android/launcher2/Folder$9;->this$0:Lcom/android/launcher2/Folder;

    invoke-virtual {v1, v2, v2}, Lcom/android/launcher2/Folder;->close(ZZ)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
