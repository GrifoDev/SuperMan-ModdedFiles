.class Lcom/android/launcher2/BadgeSettingsFragment$BadgeAppLoader;
.super Landroid/os/AsyncTask;
.source "BadgeSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/BadgeSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BadgeAppLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/BadgeSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/android/launcher2/BadgeSettingsFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/BadgeSettingsFragment$BadgeAppLoader;->this$0:Lcom/android/launcher2/BadgeSettingsFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher2/BadgeSettingsFragment;Lcom/android/launcher2/BadgeSettingsFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher2/BadgeSettingsFragment$BadgeAppLoader;-><init>(Lcom/android/launcher2/BadgeSettingsFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/BadgeSettingsFragment$BadgeAppLoader;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2

    const-string v0, "BadgeSettingsFragment"

    const-string v1, "BadgeAppLoader doInBackground: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher2/BadgeSettingsFragment$BadgeAppLoader;->this$0:Lcom/android/launcher2/BadgeSettingsFragment;

    invoke-static {v0}, Lcom/android/launcher2/BadgeSettingsFragment;->access$1000(Lcom/android/launcher2/BadgeSettingsFragment;)V

    iget-object v0, p0, Lcom/android/launcher2/BadgeSettingsFragment$BadgeAppLoader;->this$0:Lcom/android/launcher2/BadgeSettingsFragment;

    invoke-static {v0}, Lcom/android/launcher2/BadgeSettingsFragment;->access$1100(Lcom/android/launcher2/BadgeSettingsFragment;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher2/BadgeSettingsFragment$BadgeAppLoader;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/launcher2/BadgeSettingsFragment$BadgeAppLoader;->this$0:Lcom/android/launcher2/BadgeSettingsFragment;

    invoke-static {v0}, Lcom/android/launcher2/BadgeSettingsFragment;->access$200(Lcom/android/launcher2/BadgeSettingsFragment;)Landroid/widget/Switch;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/BadgeSettingsFragment$BadgeAppLoader;->this$0:Lcom/android/launcher2/BadgeSettingsFragment;

    invoke-static {v1}, Lcom/android/launcher2/BadgeSettingsFragment;->access$400(Lcom/android/launcher2/BadgeSettingsFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/launcher2/BadgeSettingsFragment$BadgeAppLoader;->this$0:Lcom/android/launcher2/BadgeSettingsFragment;

    invoke-static {v0}, Lcom/android/launcher2/BadgeSettingsFragment;->access$800(Lcom/android/launcher2/BadgeSettingsFragment;)Lcom/android/launcher2/BadgeSettingsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/BadgeSettingsAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/launcher2/BadgeSettingsFragment$BadgeAppLoader;->this$0:Lcom/android/launcher2/BadgeSettingsFragment;

    invoke-static {v0}, Lcom/android/launcher2/BadgeSettingsFragment;->access$900(Lcom/android/launcher2/BadgeSettingsFragment;)V

    const-string v0, "BadgeSettingsFragment"

    const-string v1, "BadgeAppLoader onPostExecute: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
