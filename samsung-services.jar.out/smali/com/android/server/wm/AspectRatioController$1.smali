.class Lcom/android/server/wm/AspectRatioController$1;
.super Ljava/lang/Object;
.source "AspectRatioController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AspectRatioController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AspectRatioController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/AspectRatioController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/AspectRatioController$1;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/server/wm/AspectRatioController$1;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-static {v4}, Lcom/android/server/wm/AspectRatioController;->-get10(Lcom/android/server/wm/AspectRatioController;)Lcom/android/server/wm/SamsungWindowManagerService;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/wm/AspectRatioController$1;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-static {v5}, Lcom/android/server/wm/AspectRatioController;->-get10(Lcom/android/server/wm/AspectRatioController;)Lcom/android/server/wm/SamsungWindowManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    const v6, 0x10400d8

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wm/AspectRatioController$1;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-static {v5}, Lcom/android/server/wm/AspectRatioController;->-get10(Lcom/android/server/wm/AspectRatioController;)Lcom/android/server/wm/SamsungWindowManagerService;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    const v6, 0x10400da

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v4, Lcom/android/server/wm/AspectRatioController$1$1;

    invoke-direct {v4, p0}, Lcom/android/server/wm/AspectRatioController$1$1;-><init>(Lcom/android/server/wm/AspectRatioController$1;)V

    const v5, 0x104000a

    invoke-virtual {v0, v5, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {v2, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    const-string/jumbo v4, "ChangeRatioGuidePopup"

    invoke-virtual {v3, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v4, 0x7d8

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
