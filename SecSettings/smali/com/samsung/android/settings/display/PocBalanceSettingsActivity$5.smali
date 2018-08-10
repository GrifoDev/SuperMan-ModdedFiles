.class Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$5;
.super Ljava/lang/Object;
.source "PocBalanceSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->showPocApplyDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$5;->this$0:Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v2, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$5;->this$0:Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;

    invoke-virtual {v2}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0434

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$5;->this$0:Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;

    invoke-virtual {v2}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0435

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$5;->this$0:Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->-get1(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    iget-object v2, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$5;->this$0:Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;

    invoke-static {v2}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->-wrap2(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)V

    return-void
.end method
