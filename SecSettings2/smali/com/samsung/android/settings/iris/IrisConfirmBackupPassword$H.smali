.class Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$H;
.super Landroid/os/Handler;
.source "IrisConfirmBackupPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$H;->this$0:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    const/4 v1, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$H;->this$0:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    iput-boolean v1, v0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mIsBPConfirmed:Z

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$H;->this$0:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->-set0(Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;I)I

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$H;->this$0:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->dismiss()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x291c
        :pswitch_0
    .end packed-switch
.end method
