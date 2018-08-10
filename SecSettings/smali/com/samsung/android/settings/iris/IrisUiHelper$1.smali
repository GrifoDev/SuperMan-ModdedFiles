.class Lcom/samsung/android/settings/iris/IrisUiHelper$1;
.super Ljava/lang/Object;
.source "IrisUiHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/iris/IrisUiHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/iris/IrisUiHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/iris/IrisUiHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/iris/IrisUiHelper$1;->this$0:Lcom/samsung/android/settings/iris/IrisUiHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper$1;->this$0:Lcom/samsung/android/settings/iris/IrisUiHelper;

    iget-object v1, p0, Lcom/samsung/android/settings/iris/IrisUiHelper$1;->this$0:Lcom/samsung/android/settings/iris/IrisUiHelper;

    invoke-static {v1}, Lcom/samsung/android/settings/iris/IrisUiHelper;->-get0(Lcom/samsung/android/settings/iris/IrisUiHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/iris/IrisUiHelper;->irisConfirmCredentialFailedCount(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper$1;->this$0:Lcom/samsung/android/settings/iris/IrisUiHelper;

    invoke-static {v0}, Lcom/samsung/android/settings/iris/IrisUiHelper;->-get1(Lcom/samsung/android/settings/iris/IrisUiHelper;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f120e26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisUiHelper$1;->this$0:Lcom/samsung/android/settings/iris/IrisUiHelper;

    invoke-static {v0}, Lcom/samsung/android/settings/iris/IrisUiHelper;->-get1(Lcom/samsung/android/settings/iris/IrisUiHelper;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f120e30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
