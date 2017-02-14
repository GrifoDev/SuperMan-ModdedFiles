.class Lcom/android/settings/vpn2/AppDialogFragment$1;
.super Ljava/lang/Object;
.source "AppDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/vpn2/AppDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/vpn2/AppDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/vpn2/AppDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/vpn2/AppDialogFragment$1;->this$0:Lcom/android/settings/vpn2/AppDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/vpn2/AppDialogFragment$1;->this$0:Lcom/android/settings/vpn2/AppDialogFragment;

    invoke-static {v0, p1}, Lcom/android/settings/vpn2/AppDialogFragment;->-wrap0(Lcom/android/settings/vpn2/AppDialogFragment;Landroid/content/DialogInterface;)V

    return-void
.end method
