.class Lcom/samsung/android/settings/GigaMultiPath$7;
.super Ljava/lang/Object;
.source "GigaMultiPath.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/GigaMultiPath;->onSwitchChanged(Landroid/widget/Switch;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/GigaMultiPath;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/GigaMultiPath;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/GigaMultiPath$7;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$7;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/GigaMultiPath;->-set0(Lcom/samsung/android/settings/GigaMultiPath;Z)Z

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$7;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v0}, Lcom/samsung/android/settings/GigaMultiPath;->-get8(Lcom/samsung/android/settings/GigaMultiPath;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$7;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-static {v0}, Lcom/samsung/android/settings/GigaMultiPath;->-get7(Lcom/samsung/android/settings/GigaMultiPath;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/GigaMultiPath$7;->this$0:Lcom/samsung/android/settings/GigaMultiPath;

    invoke-virtual {v0}, Lcom/samsung/android/settings/GigaMultiPath;->showProgressDialog()V

    return-void
.end method
