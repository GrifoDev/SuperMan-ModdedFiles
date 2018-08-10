.class Lcom/samsung/android/settings/guide/BtSettingsGuider$3;
.super Ljava/lang/Object;
.source "BtSettingsGuider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/guide/BtSettingsGuider;->initHelpDialogContent(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/guide/BtSettingsGuider;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/guide/BtSettingsGuider;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider$3;->this$0:Lcom/samsung/android/settings/guide/BtSettingsGuider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider$3;->this$0:Lcom/samsung/android/settings/guide/BtSettingsGuider;

    invoke-static {v0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->-get1(Lcom/samsung/android/settings/guide/BtSettingsGuider;)Lcom/samsung/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider$3;->this$0:Lcom/samsung/android/settings/guide/BtSettingsGuider;

    invoke-static {v0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->-get1(Lcom/samsung/android/settings/guide/BtSettingsGuider;)Lcom/samsung/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/settings/guide/BtSettingsGuider$OnCloseHelpDialogListener;->OnCloseHelpDialog()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/guide/BtSettingsGuider$3;->this$0:Lcom/samsung/android/settings/guide/BtSettingsGuider;

    invoke-virtual {v0}, Lcom/samsung/android/settings/guide/BtSettingsGuider;->dismissHelpDialog()V

    return-void
.end method
