.class Lcom/android/systemui/statusbar/policy/UserInfoController$3;
.super Landroid/os/AsyncTask;
.source "UserInfoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/UserInfoController;->queryForUserInformation()V
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
        "Landroid/util/Pair",
        "<",
        "Ljava/lang/String;",
        "Landroid/graphics/drawable/Drawable;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserInfoController;

.field final synthetic val$avatarSize:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isGuest:Z

.field final synthetic val$userId:I

.field final synthetic val$userName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/UserInfoController;Ljava/lang/String;IZILandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserInfoController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/UserInfoController$3;->val$userName:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/statusbar/policy/UserInfoController$3;->val$userId:I

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/policy/UserInfoController$3;->val$isGuest:Z

    iput p5, p0, Lcom/android/systemui/statusbar/policy/UserInfoController$3;->val$avatarSize:I

    iput-object p6, p0, Lcom/android/systemui/statusbar/policy/UserInfoController$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    const/16 v1, -0x2710

    const/4 v11, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->-get0(Lcom/android/systemui/statusbar/policy/UserInfoController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v10

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/UserInfoController$3;->val$userName:Ljava/lang/String;

    const/4 v6, 0x0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController$3;->val$userId:I

    invoke-virtual {v10, v0}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v9

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController$3;->val$isGuest:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController$3;->val$isGuest:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-static {v0, v11}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v9

    :cond_0
    if-eqz v9, :cond_4

    new-instance v0, Lcom/android/settingslib/drawable/UserIconDrawable;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/UserInfoController$3;->val$avatarSize:I

    invoke-direct {v0, v1}, Lcom/android/settingslib/drawable/UserIconDrawable;-><init>(I)V

    invoke-virtual {v0, v9}, Lcom/android/settingslib/drawable/UserIconDrawable;->setIcon(Landroid/graphics/Bitmap;)Lcom/android/settingslib/drawable/UserIconDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserInfoController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/UserInfoController;->-get0(Lcom/android/systemui/statusbar/policy/UserInfoController;)Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/policy/UserInfoController$3;->val$userId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/drawable/UserIconDrawable;->setBadgeIfManagedUser(Landroid/content/Context;I)Lcom/android/settingslib/drawable/UserIconDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/drawable/UserIconDrawable;->bake()Lcom/android/settingslib/drawable/UserIconDrawable;

    move-result-object v6

    :goto_1
    invoke-virtual {v10}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v11, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController$3;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "_id"

    const/4 v5, 0x0

    aput-object v4, v2, v5

    const-string/jumbo v4, "display_name"

    aput-object v4, v2, v11

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_2

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "display_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v8, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController$3;->val$userId:I

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController$3;->val$isGuest:Z

    if-eqz v0, :cond_5

    :goto_2
    invoke-static {v1, v11}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_1

    :cond_5
    iget v1, p0, Lcom/android/systemui/statusbar/policy/UserInfoController$3;->val$userId:I

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserInfoController$3;->doInBackground([Ljava/lang/Void;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserInfoController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoController;

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->-set2(Lcom/android/systemui/statusbar/policy/UserInfoController;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserInfoController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoController;

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->-set0(Lcom/android/systemui/statusbar/policy/UserInfoController;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/UserInfoController;->-set1(Lcom/android/systemui/statusbar/policy/UserInfoController;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserInfoController$3;->this$0:Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->-wrap0(Lcom/android/systemui/statusbar/policy/UserInfoController;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/util/Pair;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/UserInfoController$3;->onPostExecute(Landroid/util/Pair;)V

    return-void
.end method
