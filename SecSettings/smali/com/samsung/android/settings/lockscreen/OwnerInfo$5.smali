.class Lcom/samsung/android/settings/lockscreen/OwnerInfo$5;
.super Ljava/lang/Object;
.source "OwnerInfo.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/OwnerInfo;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$5;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    if-lez p3, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$5;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get0(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$5;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get0(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/app/AlertDialog;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$5;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get2(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/EditText;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setGravity(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$5;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get2(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/EditText;

    move-result-object v1

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setGravity(I)V

    goto :goto_0
.end method
