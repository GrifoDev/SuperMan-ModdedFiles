.class Lcom/android/launcher2/CreateFolderDialog$4;
.super Ljava/lang/Object;
.source "CreateFolderDialog.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/CreateFolderDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/CreateFolderDialog;

.field final synthetic val$viewToast:Landroid/widget/Toast;


# direct methods
.method constructor <init>(Lcom/android/launcher2/CreateFolderDialog;Landroid/widget/Toast;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/CreateFolderDialog$4;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    iput-object p2, p0, Lcom/android/launcher2/CreateFolderDialog$4;->val$viewToast:Landroid/widget/Toast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x2

    new-array v1, v2, [I

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v2, v1, v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/launcher2/CreateFolderDialog$4;->this$0:Lcom/android/launcher2/CreateFolderDialog;

    invoke-virtual {v3}, Lcom/android/launcher2/CreateFolderDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a03ae

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v0, v2

    iget-object v2, p0, Lcom/android/launcher2/CreateFolderDialog$4;->val$viewToast:Landroid/widget/Toast;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/widget/Toast;->setGravity(III)V

    iget-object v2, p0, Lcom/android/launcher2/CreateFolderDialog$4;->val$viewToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return v5
.end method
