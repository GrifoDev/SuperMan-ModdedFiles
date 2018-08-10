.class Lcom/android/systemui/ForegroundServicesDialog$1;
.super Ljava/lang/Object;
.source "ForegroundServicesDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ForegroundServicesDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/ForegroundServicesDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/ForegroundServicesDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ForegroundServicesDialog$1;->this$0:Lcom/android/systemui/ForegroundServicesDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/ForegroundServicesDialog$1;->this$0:Lcom/android/systemui/ForegroundServicesDialog;

    invoke-static {v2}, Lcom/android/systemui/ForegroundServicesDialog;->-get2(Lcom/android/systemui/ForegroundServicesDialog;)Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/systemui/ForegroundServicesDialog$PackageItemAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/ForegroundServicesDialog$1;->this$0:Lcom/android/systemui/ForegroundServicesDialog;

    invoke-virtual {v2, v0}, Lcom/android/systemui/ForegroundServicesDialog;->startActivity(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/systemui/ForegroundServicesDialog$1;->this$0:Lcom/android/systemui/ForegroundServicesDialog;

    invoke-virtual {v2}, Lcom/android/systemui/ForegroundServicesDialog;->finish()V

    const-string/jumbo v2, "299"

    const-string/jumbo v3, "1133"

    invoke-static {v2, v3, v1}, Lcom/android/systemui/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
