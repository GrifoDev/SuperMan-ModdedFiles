.class Lcom/samsung/android/settings/fmm/SimChangeAlert$10;
.super Ljava/lang/Object;
.source "SimChangeAlert.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/fmm/SimChangeAlert;->showNotificationChargeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/fmm/SimChangeAlert;

.field final synthetic val$chkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/fmm/SimChangeAlert;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert$10;->this$0:Lcom/samsung/android/settings/fmm/SimChangeAlert;

    iput-object p2, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert$10;->val$chkbox:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert$10;->this$0:Lcom/samsung/android/settings/fmm/SimChangeAlert;

    invoke-static {v0}, Lcom/samsung/android/settings/fmm/SimChangeAlert;->-get5(Lcom/samsung/android/settings/fmm/SimChangeAlert;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/fmm/SimChangeAlert$10;->val$chkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/settings/fmm/SimChangeAlert;->chkboxFlag:Z

    :cond_0
    return-void
.end method
