.class Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$9;
.super Ljava/lang/Object;
.source "DirectAccessFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$9;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment$9;->this$0:Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;

    iget-object v0, v0, Lcom/samsung/android/settings/accessibility/directaccess/DirectAccessFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setCheckedInternal(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method
