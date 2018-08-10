.class Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$3;
.super Ljava/lang/Object;
.source "UseFaceLockSettingsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->showUseFaceLockSettingsDailog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$3;->this$0:Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$3;->this$0:Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;

    invoke-virtual {v0}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->finish()V

    return-void
.end method
