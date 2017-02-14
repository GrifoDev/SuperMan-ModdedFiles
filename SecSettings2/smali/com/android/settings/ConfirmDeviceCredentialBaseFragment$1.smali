.class Lcom/android/settings/ConfirmDeviceCredentialBaseFragment$1;
.super Ljava/lang/Object;
.source "ConfirmDeviceCredentialBaseFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment$1;->this$0:Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment$1;->this$0:Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;

    invoke-virtual {v0}, Lcom/android/settings/ConfirmDeviceCredentialBaseFragment;->onShowDefault()V

    return-void
.end method
