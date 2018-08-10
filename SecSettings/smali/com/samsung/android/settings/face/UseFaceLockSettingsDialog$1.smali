.class Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$1;
.super Ljava/lang/Object;
.source "UseFaceLockSettingsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    iput-object p1, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$1;->this$0:Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$1;->this$0:Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;

    sget-object v1, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;->FaceLock:Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->-set1(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;)Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$1;->this$0:Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;

    sget-object v1, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;->IrisLock:Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;->-set1(Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog;Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;)Lcom/samsung/android/settings/face/UseFaceLockSettingsDialog$LockType;

    goto :goto_0
.end method
