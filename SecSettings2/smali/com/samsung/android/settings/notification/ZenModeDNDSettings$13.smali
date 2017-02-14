.class Lcom/samsung/android/settings/notification/ZenModeDNDSettings$13;
.super Ljava/lang/Object;
.source "ZenModeDNDSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->showDaysDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$13;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/notification/ZenModeDNDSettings$13;->this$0:Lcom/samsung/android/settings/notification/ZenModeDNDSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/notification/ZenModeDNDSettings;->-get3(Lcom/samsung/android/settings/notification/ZenModeDNDSettings;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
