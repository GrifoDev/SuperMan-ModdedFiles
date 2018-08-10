.class Lcom/android/systemui/util/ShortcutManager$6;
.super Landroid/os/AsyncTask;
.source "ShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/util/ShortcutManager;->updateShortcutsIcon(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/ShortcutManager;

.field final synthetic val$th:I


# direct methods
.method constructor <init>(Lcom/android/systemui/util/ShortcutManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/ShortcutManager$6;->this$0:Lcom/android/systemui/util/ShortcutManager;

    iput p2, p0, Lcom/android/systemui/util/ShortcutManager$6;->val$th:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;
    .locals 6

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/util/ShortcutManager$6;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v3}, Lcom/android/systemui/util/ShortcutManager;->-get2(Lcom/android/systemui/util/ShortcutManager;)Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/util/ShortcutManager$6;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v4}, Lcom/android/systemui/util/ShortcutManager;->-get4(Lcom/android/systemui/util/ShortcutManager;)[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    move-result-object v4

    aget-object v4, v4, v2

    iget-object v4, v4, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/util/ShortcutManager$6;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v3}, Lcom/android/systemui/util/ShortcutManager;->-get4(Lcom/android/systemui/util/ShortcutManager;)[Lcom/android/systemui/util/ShortcutManager$ShortcutData;

    move-result-object v3

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/systemui/util/ShortcutManager$6;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v4, v0}, Lcom/android/systemui/util/ShortcutManager;->-wrap0(Lcom/android/systemui/util/ShortcutManager;Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/util/ShortcutManager$ShortcutData;->mDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v3

    :catch_0
    move-exception v1

    const-string/jumbo v3, "ShortcutManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "NameNotFoundException while updating icon : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v3
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/ShortcutManager$6;->doInBackground([Ljava/lang/Integer;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager$6;->this$0:Lcom/android/systemui/util/ShortcutManager;

    iget v1, p0, Lcom/android/systemui/util/ShortcutManager$6;->val$th:I

    invoke-static {v0, v1}, Lcom/android/systemui/util/ShortcutManager;->-wrap4(Lcom/android/systemui/util/ShortcutManager;I)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/ShortcutManager$6;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
