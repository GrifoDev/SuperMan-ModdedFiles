.class Lcom/sec/android/cover/manager/CoverPopupManager$3;
.super Ljava/lang/Object;
.source "CoverPopupManager.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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


# direct methods
.method constructor <init>(Lcom/sec/android/cover/manager/CoverPopupManager;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/manager/CoverPopupManager$3;->this$0:Lcom/sec/android/cover/manager/CoverPopupManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPopupManager$3;->this$0:Lcom/sec/android/cover/manager/CoverPopupManager;

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPopupManager;->dismissPopupDialog()V

    const/4 v0, 0x0

    return v0
.end method
