.class Lcom/samsung/android/settings/display/PocBalanceProgressActivity$6;
.super Ljava/lang/Object;
.source "PocBalanceProgressActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->showPocCancelDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$6;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    if-eqz p1, :cond_1

    move-object v4, p1

    check-cast v4, Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v1, 0x0

    if-eqz v2, :cond_0

    const v4, 0x7f0b0438

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const v4, 0x7f0b0436

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v3, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$6;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-static {v4}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->-wrap2(Lcom/samsung/android/settings/display/PocBalanceProgressActivity;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v4, p0, Lcom/samsung/android/settings/display/PocBalanceProgressActivity$6;->this$0:Lcom/samsung/android/settings/display/PocBalanceProgressActivity;

    invoke-virtual {v4}, Lcom/samsung/android/settings/display/PocBalanceProgressActivity;->finish()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
