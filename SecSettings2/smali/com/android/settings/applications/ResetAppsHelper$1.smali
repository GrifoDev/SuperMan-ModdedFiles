.class Lcom/android/settings/applications/ResetAppsHelper$1;
.super Ljava/lang/Object;
.source "ResetAppsHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ResetAppsHelper;->buildResetDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ResetAppsHelper;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ResetAppsHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-static {v0}, Lcom/android/settings/applications/ResetAppsHelper;->-get1(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ResetAppsHelper$1;->this$0:Lcom/android/settings/applications/ResetAppsHelper;

    invoke-static {v1}, Lcom/android/settings/applications/ResetAppsHelper;->-get1(Lcom/android/settings/applications/ResetAppsHelper;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/16 v2, 0x41

    invoke-static {v0, v2, v1}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    return-void
.end method
