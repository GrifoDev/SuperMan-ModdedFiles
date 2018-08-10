.class Lcom/android/server/wm/AspectRatioController$2;
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

    iput-object p1, p0, Lcom/android/server/wm/AspectRatioController$2;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/android/server/wm/AspectRatioController$2;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-static {v2}, Lcom/android/server/wm/AspectRatioController;->-get10(Lcom/android/server/wm/AspectRatioController;)Lcom/android/server/wm/SamsungWindowManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    const v3, 0x103012b

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v2, p0, Lcom/android/server/wm/AspectRatioController$2;->this$0:Lcom/android/server/wm/AspectRatioController;

    invoke-static {v2}, Lcom/android/server/wm/AspectRatioController;->-get10(Lcom/android/server/wm/AspectRatioController;)Lcom/android/server/wm/SamsungWindowManagerService;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/SamsungWindowManagerService;->mContext:Landroid/content/Context;

    const v3, 0x10400da

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void
.end method
