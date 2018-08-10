.class Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$7;
.super Ljava/lang/Object;
.source "PocBalanceSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->showPocWriteErrorOccuredOnBootDialog()V
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

    iput-object p1, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$7;->this$0:Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity$7;->this$0:Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;->-get2(Lcom/samsung/android/settings/display/PocBalanceSettingsActivity;)Lcom/samsung/android/hardware/display/SemMdnieManager;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/display/SecDisplayUtils;->isNeedSkipPOC(Lcom/samsung/android/hardware/display/SemMdnieManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/display/SecDisplayUtils;->removeEfsPocErrorOccurredOnBoot()V

    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
