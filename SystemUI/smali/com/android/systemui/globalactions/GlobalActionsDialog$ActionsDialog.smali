.class final Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;
.super Landroid/app/Dialog;
.source "GlobalActionsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActionsDialog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$1;
    }
.end annotation


# instance fields
.field private final mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

.field private final mAlert:Lcom/android/internal/app/AlertController;

.field private mCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/app/AlertController$AlertParams;Landroid/os/Handler;)V
    .locals 5

    invoke-static {p1}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->getDialogTheme(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog$1;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;)V

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/android/internal/app/AlertController;->create(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)Lcom/android/internal/app/AlertController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    iget-object v0, p2, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialog$MyAdapter;

    const-string/jumbo v0, "USA"

    invoke-static {}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "americano"

    invoke-static {}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "VZW"

    invoke-static {}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-static {}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get72()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040868

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    const-string/jumbo v0, "VZW"

    invoke-static {}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get2()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get62()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-static {}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get72()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/android/internal/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {p2, v0}, Lcom/android/internal/app/AlertController$AlertParams;->apply(Lcom/android/internal/app/AlertController;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-static {}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get72()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10403bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private static getDialogTheme(Landroid/content/Context;)I
    .locals 4

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010309

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-static {}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get65()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get61()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x103031e

    return v1

    :cond_0
    const v1, 0x1030320

    return v1

    :cond_1
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "GlobalActionsDialog"

    const-string/jumbo v1, "===== Start dispatchKeyEvent ====="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    const-string/jumbo v0, "GlobalActionsDialog"

    const-string/jumbo v1, "dispatchKeyEvent : KeyEvent.KEYCODE_HOME"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    const v2, 0x104038c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mContext:Landroid/content/Context;

    const v2, 0x10403bb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get72()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    invoke-static {}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get63()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    invoke-static {v3}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-set19(Z)Z

    return v3

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v1

    :cond_3
    invoke-static {}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get65()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v2, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :cond_5
    return v1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->-get65()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$ActionsDialog;->mAlert:Lcom/android/internal/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    const/4 v0, 0x1

    invoke-super {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    return-void
.end method
