.class Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;
.super Landroid/os/AsyncTask;
.source "LockscreenWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->run()V
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
        "Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

.field final synthetic val$currentUser:I

.field final synthetic val$selectedUser:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;ILandroid/os/UserHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;->val$currentUser:I

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;->val$selectedUser:Landroid/os/UserHandle;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;->val$currentUser:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;->val$selectedUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->loadBitmap(ILandroid/os/UserHandle;)Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;->doInBackground([Ljava/lang/Void;)Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;->success:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->-set1(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;Z)Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->-set0(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->-get1(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setHasLockscreenWallpaper(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->-get0(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateMediaMetaData(ZZ)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;->this$0:Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;->-set2(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$1;->onPostExecute(Lcom/android/systemui/statusbar/phone/LockscreenWallpaper$LoaderResult;)V

    return-void
.end method
