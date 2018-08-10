.class Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities$SaveBitmapTask;
.super Landroid/os/AsyncTask;
.source "TaskBarUtilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SaveBitmapTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field filePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities$SaveBitmapTask;->bitmap:Landroid/graphics/Bitmap;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities$SaveBitmapTask;->filePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities$SaveBitmapTask;->bitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities$SaveBitmapTask;->filePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->-wrap0(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities$SaveBitmapTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onCancelled()V
    .locals 0

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities$SaveBitmapTask;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities$SaveBitmapTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities$SaveBitmapTask;->bitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities$SaveBitmapTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
