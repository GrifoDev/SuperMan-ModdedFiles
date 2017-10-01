.class Lcom/android/server/InputMethodManagerService$10;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/InputMethodManagerService;->showInputMethodMenu(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$10;->this$0:Lcom/android/server/InputMethodManagerService;

    iput-object p2, p0, Lcom/android/server/InputMethodManagerService$10;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 5

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$10;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->-get17(Lcom/android/server/InputMethodManagerService;)Landroid/app/AlertDialog;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$10;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-static {v3}, Lcom/android/server/InputMethodManagerService;->-get17(Lcom/android/server/InputMethodManagerService;)Landroid/app/AlertDialog;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$10;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v0, v3, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {v2}, Landroid/widget/Button;->getTextSize()F

    move-result v3

    iget-object v4, p0, Lcom/android/server/InputMethodManagerService$10;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float v1, v3, v4

    const v3, 0x3f99999a    # 1.2f

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    const v0, 0x3f99999a    # 1.2f

    :cond_0
    mul-float v3, v1, v0

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_1
    return-void
.end method
