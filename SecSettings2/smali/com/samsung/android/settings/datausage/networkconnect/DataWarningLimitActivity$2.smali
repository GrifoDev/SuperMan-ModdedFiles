.class Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$2;
.super Ljava/lang/Object;
.source "DataWarningLimitActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$2;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$2;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->-get8(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Landroid/widget/Switch;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$2;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;

    invoke-static {v0}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->-get8(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
