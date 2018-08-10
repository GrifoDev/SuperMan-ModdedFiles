.class Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "DefaultAutofillPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;->this$0:Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_settings_applications_defaultapps_DefaultAutofillPicker$1_4335()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;->this$0:Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;

    invoke-static {v0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->-wrap0(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;)V

    return-void
.end method

.method synthetic lambda$-com_android_settings_applications_defaultapps_DefaultAutofillPicker$1_4467()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;->this$0:Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;

    invoke-static {v0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->-wrap0(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;)V

    return-void
.end method

.method synthetic lambda$-com_android_settings_applications_defaultapps_DefaultAutofillPicker$1_4607()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;->this$0:Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;

    invoke-static {v0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->-wrap0(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;)V

    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;->this$0:Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;

    invoke-static {v0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->-get0(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/defaultapps/-$Lambda$jPsFDJB7kLzHE6R6R84fcYoYv_Q$1;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/defaultapps/-$Lambda$jPsFDJB7kLzHE6R6R84fcYoYv_Q$1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;->this$0:Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;

    invoke-static {v0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->-get0(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/defaultapps/-$Lambda$jPsFDJB7kLzHE6R6R84fcYoYv_Q$2;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/defaultapps/-$Lambda$jPsFDJB7kLzHE6R6R84fcYoYv_Q$2;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;->this$0:Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;

    invoke-static {v0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->-get0(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/applications/defaultapps/-$Lambda$jPsFDJB7kLzHE6R6R84fcYoYv_Q$3;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/defaultapps/-$Lambda$jPsFDJB7kLzHE6R6R84fcYoYv_Q$3;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
