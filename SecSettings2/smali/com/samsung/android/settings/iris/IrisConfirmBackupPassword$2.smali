.class Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$2;
.super Ljava/lang/Object;
.source "IrisConfirmBackupPassword.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$2;->this$0:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword$2;->this$0:Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;->-set0(Lcom/samsung/android/settings/iris/IrisConfirmBackupPassword;I)I

    return-void
.end method
