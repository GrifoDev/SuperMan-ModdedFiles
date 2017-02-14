.class Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$SkipDialog$1;
.super Ljava/lang/Object;
.source "SecSetupLockScreenIntroActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$SkipDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$SkipDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$SkipDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$SkipDialog$1;->this$1:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$SkipDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$SkipDialog$1;->this$1:Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$SkipDialog;

    invoke-virtual {v1}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity$SkipDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/SecSetupLockScreenIntroActivity;->nextAction(I)V

    return-void
.end method
