.class Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$1$1;
.super Ljava/lang/Object;
.source "DataWarningLimitActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$1;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$1$1;->this$1:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.settings.BILLING_CYCLE_CHN_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$1$1;->this$1:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$1;

    iget-object v1, v1, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity$1;->this$0:Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;

    invoke-static {v1}, Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;->-get0(Lcom/samsung/android/settings/datausage/networkconnect/DataWarningLimitActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
