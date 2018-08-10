.class Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;
.super Landroid/os/AsyncTask;
.source "BtTetherDevicePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MakeDeviceAsync"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;
    .locals 7

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->-set1(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;Z)Z

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    invoke-static {v5}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->-get1(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getContactDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    invoke-virtual {v5}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    invoke-static {v5}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->-get1(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBtClassDrawable()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const v5, 0x7f06006a

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    invoke-static {v5}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->-get1(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    invoke-static {v5}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->-get1(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectionSummary()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    invoke-static {v5}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->-get1(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v1

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    invoke-static {v5}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->-get0(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;)Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;

    move-result-object v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    new-instance v6, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;

    invoke-direct {v6, v2, v4, v0, v1}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;-><init>(Ljava/lang/String;ILandroid/graphics/drawable/Drawable;Z)V

    invoke-static {v5, v6}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->-set0(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;)Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    invoke-static {v5}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->-get0(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;)Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;

    move-result-object v5

    return-object v5

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    invoke-static {v5}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->-get0(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;)Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;

    move-result-object v5

    iput-object v2, v5, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;->title:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    invoke-static {v5}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->-get0(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;)Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;

    move-result-object v5

    iput v4, v5, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;->summary:I

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    invoke-static {v5}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->-get0(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;)Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;

    move-result-object v5

    iput-object v0, v5, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;->icon:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    invoke-static {v5}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->-get0(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;)Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;

    move-result-object v5

    iput-boolean v1, v5, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;->isBusy:Z

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->doInBackground([Ljava/lang/Void;)Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;)V
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "\u200e"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;->title:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\u200e"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    invoke-static {v6}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->-get1(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPrefixName()Ljava/lang/String;

    move-result-object v4

    iget v5, p1, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;->summary:I

    iget-object v3, p1, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    const-string/jumbo v6, "BtTetherDevicePreference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onDeviceAttributesChanged :: prefixName = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->setTitle(Ljava/lang/CharSequence;)V

    if-eqz v5, :cond_3

    const-string/jumbo v6, "BtTetherDevicePreference"

    const-string/jumbo v7, "onDeviceAttributesChanged :: Connection summary set "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    invoke-virtual {v6, v5}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->setSummary(I)V

    :goto_1
    if-eqz v3, :cond_0

    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    invoke-virtual {v6, v3}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    iget-boolean v7, p1, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;->isBusy:Z

    xor-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->setEnabled(Z)V

    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    invoke-static {v6}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->-wrap0(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    invoke-static {v6, v9}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->-set1(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;Z)Z

    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    invoke-static {v6}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->-get2(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;)Z

    move-result v6

    if-eqz v6, :cond_1

    :try_start_1
    new-instance v6, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;

    iget-object v7, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    invoke-direct {v6, v7}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;-><init>(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;)V

    sget-object v7, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Void;

    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->-set2(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;Z)Z
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_3
    return-void

    :cond_2
    const-string/jumbo v6, "BtTetherDevicePreference"

    const-string/jumbo v7, "onDeviceAttributesChanged :: prefixName is empty."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v6, "BtTetherDevicePreference"

    const-string/jumbo v7, "onDeviceAttributesChanged :: Connection summary is empty."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->this$0:Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;

    invoke-virtual {v6, v10}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :catch_0
    move-exception v1

    const-string/jumbo v6, "BtTetherDevicePreference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error has occured during notifyHierarchyChanged() : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_1
    move-exception v2

    const-string/jumbo v6, "BtTetherDevicePreference"

    const-string/jumbo v7, "RejectedExecutionException :: "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$MakeDeviceAsync;->onPostExecute(Lcom/samsung/android/settings/bluetooth/tethering/BtTetherDevicePreference$DeviceObject;)V

    return-void
.end method
