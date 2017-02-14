.class Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$9;
.super Ljava/lang/Object;
.source "IrisConfirmBackupPassword.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->verifyPassword()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$9;->this$0:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$9;->this$0:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    iget-object v0, v0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPasswordGuide:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$9;->this$0:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    iget-object v0, v0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPassword:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$9;->this$0:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    iget-object v0, v0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->mAltPasswordError:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method
