.class Lcom/samsung/android/settings/iris/IrisLockSettings$5;
.super Ljava/lang/Object;
.source "IrisLockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/iris/IrisLockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;

.field final synthetic val$result:I

.field final synthetic val$skipIntro:Z


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$5;->this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->-wrap0(Lcom/samsung/android/settings/iris/IrisLockSettings;)V

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$5;->this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;

    iget v1, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$5;->val$result:I

    iget-boolean v2, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$5;->val$skipIntro:Z

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/iris/IrisLockSettings;->-wrap1(Lcom/samsung/android/settings/iris/IrisLockSettings;IZ)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
