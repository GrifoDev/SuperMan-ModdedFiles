.class Landroid/support/v7/graphics/Palette$Builder$1;
.super Landroid/os/AsyncTask;
.source "Palette.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/graphics/Palette$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Landroid/support/v7/graphics/Palette;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/support/v7/graphics/Palette$Builder;

.field final synthetic val$listener:Landroid/support/v7/graphics/Palette$PaletteAsyncListener;


# virtual methods
.method protected varargs doInBackground([Landroid/graphics/Bitmap;)Landroid/support/v7/graphics/Palette;
    .locals 3

    :try_start_0
    iget-object v1, p0, Landroid/support/v7/graphics/Palette$Builder$1;->this$1:Landroid/support/v7/graphics/Palette$Builder;

    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette$Builder;->generate()Landroid/support/v7/graphics/Palette;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "Palette"

    const-string/jumbo v2, "Exception thrown during async generate"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroid/support/v7/graphics/Palette$Builder$1;->doInBackground([Landroid/graphics/Bitmap;)Landroid/support/v7/graphics/Palette;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/support/v7/graphics/Palette;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/graphics/Palette$Builder$1;->val$listener:Landroid/support/v7/graphics/Palette$PaletteAsyncListener;

    invoke-interface {v0, p1}, Landroid/support/v7/graphics/Palette$PaletteAsyncListener;->onGenerated(Landroid/support/v7/graphics/Palette;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/support/v7/graphics/Palette;

    invoke-virtual {p0, p1}, Landroid/support/v7/graphics/Palette$Builder$1;->onPostExecute(Landroid/support/v7/graphics/Palette;)V

    return-void
.end method
