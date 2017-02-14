.class Lcom/android/settings/RemoteBugreportActivity$4;
.super Ljava/lang/Object;
.source "RemoteBugreportActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/RemoteBugreportActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RemoteBugreportActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/RemoteBugreportActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/RemoteBugreportActivity$4;->this$0:Lcom/android/settings/RemoteBugreportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.server.action.BUGREPORT_SHARING_DECLINED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/RemoteBugreportActivity$4;->this$0:Lcom/android/settings/RemoteBugreportActivity;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const-string/jumbo v3, "android.permission.DUMP"

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settings/RemoteBugreportActivity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/RemoteBugreportActivity$4;->this$0:Lcom/android/settings/RemoteBugreportActivity;

    invoke-virtual {v1}, Lcom/android/settings/RemoteBugreportActivity;->finish()V

    return-void
.end method
