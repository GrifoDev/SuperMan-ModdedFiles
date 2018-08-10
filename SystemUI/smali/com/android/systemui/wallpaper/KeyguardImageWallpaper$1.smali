.class Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;
.super Landroid/os/AsyncTask;
.source "KeyguardImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->updateWallpaper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;",
        ">;"
    }
.end annotation


# instance fields
.field final seq:I

.field final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

.field final synthetic val$currentUser:I

.field final synthetic val$selectedUser:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;ILandroid/os/UserHandle;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    iput p2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->val$currentUser:I

    iput-object p3, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->val$selectedUser:Landroid/os/UserHandle;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->-get5(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->-set3(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->seq:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->val$currentUser:I

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->val$selectedUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->loadBitmap(ILandroid/os/UserHandle;)Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->doInBackground([Ljava/lang/Void;)Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;)V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->seq:I

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->-get5(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)I

    move-result v1

    if-eq v0, v1, :cond_1

    const-string/jumbo v0, "KeyguardImageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "return onPostExecute "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->seq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->-get5(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-boolean v0, p1, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;->success:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->-get1(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->-set1(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;I)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->-get0(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->-set2(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->-get4(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->-get2(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    iget-object v1, p1, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->-set0(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->-wrap0(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->-get3(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->-get3(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {v0, v2}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->-set2(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    :cond_3
    const-string/jumbo v0, "KeyguardImageWallpaper"

    const-string/jumbo v1, "updateWallpaper() DONE"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const-string/jumbo v0, "KeyguardImageWallpaper"

    const-string/jumbo v1, "switch to new wallpaper immediately, not in interactive mode"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->-get3(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->-get3(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;

    invoke-static {v0, v2}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;->-set2(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$1;->onPostExecute(Lcom/android/systemui/wallpaper/KeyguardImageWallpaper$LoaderResult;)V

    return-void
.end method
