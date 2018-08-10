.class Lcom/android/settings/SettingsActivity$ProfileImageLoader$1;
.super Landroid/os/AsyncTask;
.source "SettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsActivity$ProfileImageLoader;->loadProfileImage(Lcom/android/settings/SettingsActivity$AvatarLoaderListener;)V
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/SettingsActivity$ProfileImageLoader;

.field final synthetic val$uriLoadListener:Lcom/android/settings/SettingsActivity$AvatarLoaderListener;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsActivity$ProfileImageLoader;Lcom/android/settings/SettingsActivity$AvatarLoaderListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/SettingsActivity$ProfileImageLoader$1;->this$1:Lcom/android/settings/SettingsActivity$ProfileImageLoader;

    iput-object p2, p0, Lcom/android/settings/SettingsActivity$ProfileImageLoader$1;->val$uriLoadListener:Lcom/android/settings/SettingsActivity$AvatarLoaderListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsActivity$ProfileImageLoader$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Object;
    .locals 3

    iget-object v1, p0, Lcom/android/settings/SettingsActivity$ProfileImageLoader$1;->this$1:Lcom/android/settings/SettingsActivity$ProfileImageLoader;

    invoke-static {v1}, Lcom/android/settings/SettingsActivity$ProfileImageLoader;->-get1(Lcom/android/settings/SettingsActivity$ProfileImageLoader;)Lcom/samsung/android/settings/utils/ProfileLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SettingsActivity$ProfileImageLoader$1;->this$1:Lcom/android/settings/SettingsActivity$ProfileImageLoader;

    invoke-static {v2}, Lcom/android/settings/SettingsActivity$ProfileImageLoader;->-get0(Lcom/android/settings/SettingsActivity$ProfileImageLoader;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/utils/ProfileLoader;->makeAvatarDrawable(Landroid/content/Context;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity$ProfileImageLoader$1;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsActivity$ProfileImageLoader$1;->val$uriLoadListener:Lcom/android/settings/SettingsActivity$AvatarLoaderListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/SettingsActivity$ProfileImageLoader$1;->val$uriLoadListener:Lcom/android/settings/SettingsActivity$AvatarLoaderListener;

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, p1}, Lcom/android/settings/SettingsActivity$AvatarLoaderListener;->onCompleteLoad(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
