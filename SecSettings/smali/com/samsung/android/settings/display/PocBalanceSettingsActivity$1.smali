.class Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$1;
.super Ljava/lang/Object;
.source "PocBalanceSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;
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

    iput-object p1, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$1;->this$0:Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$1;->this$0:Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->-get1(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$1;->this$0:Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->-get1(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0435

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$1;->this$0:Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->-get0(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)I

    move-result v0

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$1;->this$0:Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->-wrap1(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$1;->this$0:Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->-wrap0(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)V

    goto :goto_0
.end method
