.class final Lcom/android/incallui/ContactsAsyncHelper$2;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/ContactsAsyncHelper;->updateGifDrawableAsync(ILandroid/content/Context;Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field asyncArgs:Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;

.field asyncContext:Landroid/content/Context;

.field asyncToken:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/ContactsAsyncHelper$2;->asyncToken:I

    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/incallui/ContactsAsyncHelper$2;->asyncContext:Landroid/content/Context;

    const/4 v0, 0x2

    aget-object v0, p1, v0

    check-cast v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;

    iput-object v0, p0, Lcom/android/incallui/ContactsAsyncHelper$2;->asyncArgs:Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;

    iget-object v0, p0, Lcom/android/incallui/ContactsAsyncHelper$2;->asyncContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/incallui/ContactsAsyncHelper$2;->asyncArgs:Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;

    iget-object v1, v1, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->displayPhotoUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/android/incallui/gif/GifDrawable;->getMovie(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Movie;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/ContactsAsyncHelper$2;->asyncArgs:Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;

    new-instance v2, Lcom/android/incallui/gif/GifDrawable;

    invoke-direct {v2, v0}, Lcom/android/incallui/gif/GifDrawable;-><init>(Landroid/graphics/Movie;)V

    iput-object v2, v1, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->gifPhoto:Lcom/android/incallui/gif/GifDrawable;

    :goto_0
    return-object v3

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/ContactsAsyncHelper$2;->asyncArgs:Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;

    iput-object v3, v0, Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;->gifPhoto:Lcom/android/incallui/gif/GifDrawable;

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/ContactsAsyncHelper;->access$100()Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/android/incallui/ContactsAsyncHelper$2;->asyncToken:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/incallui/ContactsAsyncHelper$2;->asyncArgs:Lcom/android/incallui/ContactsAsyncHelper$WorkerArgs;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/android/incallui/ContactsAsyncHelper;->access$100()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
