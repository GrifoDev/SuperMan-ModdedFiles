.class Lcom/samsung/android/settings/iris/IrisLockSettings$6;
.super Ljava/lang/Object;
.source "IrisLockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$6;->this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/iris/IrisLockSettings;->-set1(Lcom/samsung/android/settings/iris/IrisLockSettings;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisLockSettings$6;->this$0:Lcom/samsung/android/settings/iris/IrisLockSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/iris/IrisLockSettings;->finish()V

    return-void
.end method
