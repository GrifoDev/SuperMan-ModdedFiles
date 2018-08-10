.class Lcom/samsung/android/settings/face/FaceAuthenticateDialog$12;
.super Ljava/lang/Object;
.source "FaceAuthenticateDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->getDialogBuiler(I)Landroid/app/AlertDialog$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$12;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$12;->this$0:Lcom/samsung/android/settings/face/FaceAuthenticateDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog;->-get9(Lcom/samsung/android/settings/face/FaceAuthenticateDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$12$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/face/FaceAuthenticateDialog$12$1;-><init>(Lcom/samsung/android/settings/face/FaceAuthenticateDialog$12;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
