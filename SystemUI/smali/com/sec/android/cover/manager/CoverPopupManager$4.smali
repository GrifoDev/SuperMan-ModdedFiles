.class Lcom/sec/android/cover/manager/CoverPopupManager$4;
.super Ljava/lang/Object;
.source "CoverPopupManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/manager/CoverPopupManager;->showPopupDialog(Landroid/view/View;Lcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/manager/CoverPopupManager;

.field final synthetic val$callback:Lcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/manager/CoverPopupManager;Lcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/manager/CoverPopupManager$4;->this$0:Lcom/sec/android/cover/manager/CoverPopupManager;

    iput-object p2, p0, Lcom/sec/android/cover/manager/CoverPopupManager$4;->val$callback:Lcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPopupManager$4;->val$callback:Lcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPopupManager$4;->val$callback:Lcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;

    invoke-interface {v0}, Lcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;->onDismiss()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPopupManager$4;->this$0:Lcom/sec/android/cover/manager/CoverPopupManager;

    invoke-static {v0, v1}, Lcom/sec/android/cover/manager/CoverPopupManager;->-set1(Lcom/sec/android/cover/manager/CoverPopupManager;Landroid/app/Dialog;)Landroid/app/Dialog;

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPopupManager$4;->this$0:Lcom/sec/android/cover/manager/CoverPopupManager;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/sec/android/cover/manager/CoverPopupManager;->-set0(Lcom/sec/android/cover/manager/CoverPopupManager;I)I

    const-string/jumbo v0, "CoverPopupManager"

    const-string/jumbo v1, "popup dialog set to null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
