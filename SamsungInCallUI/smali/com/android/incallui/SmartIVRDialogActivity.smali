.class public Lcom/android/incallui/SmartIVRDialogActivity;
.super Landroid/app/Activity;


# static fields
.field public static final PATH:Ljava/lang/String; = "shortcut_path"


# instance fields
.field builder:Landroid/app/AlertDialog$Builder;

.field cs:[Ljava/lang/CharSequence;

.field di:Landroid/app/AlertDialog;

.field private list:Landroid/widget/ListView;

.field private path:Ljava/lang/String;

.field shortcutList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/SmartIVRDialogActivity;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/incallui/SmartIVRDialogActivity;->path:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/incallui/SmartIVRDialogActivity;->list:Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/incallui/SmartIVRDialogActivity;->shortcutList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/incallui/SmartIVRDialogActivity;->builder:Landroid/app/AlertDialog$Builder;

    iput-object v0, p0, Lcom/android/incallui/SmartIVRDialogActivity;->di:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/android/incallui/SmartIVRDialogActivity;->cs:[Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "Achintya PRAKHAR SmartIVRDialogActivity:"

    const-string v1, "in On Create of dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f04004b

    invoke-virtual {p0, v0}, Lcom/android/incallui/SmartIVRDialogActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/incallui/SmartIVRDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "shortcut_path"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SmartIVRDialogActivity;->path:Ljava/lang/String;

    const-string v0, "Achintya PRAKHAR SmartIVRDialogActivity:"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "path fetched from the SecInCallActivity is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/SmartIVRDialogActivity;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    return-void
.end method

.method public onDiscard(Landroid/view/View;)V
    .locals 2

    const-string v0, "Achintya PRAKHAR SmartIVRDialogActivity:"

    const-string v1, "in On Create of dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/SmartIVRDialogActivity;->di:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SmartIVRDialogActivity;->di:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SmartIVRDialogActivity;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "Achintya PRAKHAR SmartIVRDialogActivity:"

    const-string v1, "in On Resume of dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSave(Landroid/view/View;)V
    .locals 4

    const-string v0, "Achintya PRAKHAR SmartIVRDialogActivity:"

    const-string v1, "in On Save of dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f100131

    invoke-virtual {p0, v0}, Lcom/android/incallui/SmartIVRDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SmartIVRDialogActivity;->text:Ljava/lang/String;

    const-string v0, "Achintya PRAKHAR SmartIVRDialogActivity:"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "text fetched is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/SmartIVRDialogActivity;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/util/VisualCallCenter;->VCC_getShortcutForDialog()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SmartIVRDialogActivity;->shortcutList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/incallui/SmartIVRDialogActivity;->shortcutList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const-string v0, "Achintya PRAKHAR SmartIVRDialogActivity:"

    const-string v1, "shortcutList == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SmartIVRDialogActivity;->shortcutList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/incallui/SmartIVRDialogActivity;->shortcutList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    check-cast v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/incallui/SmartIVRDialogActivity;->cs:[Ljava/lang/CharSequence;

    const-string v0, "Achintya PRAKHAR SmartIVRDialogActivity:"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size of the shortcut list is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/SmartIVRDialogActivity;->shortcutList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/SmartIVRDialogActivity;->shortcutList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    const-string v0, "Achintya PRAKHAR SmartIVRDialogActivity:"

    const-string v1, "inside if ... need to replace item show dialog "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/incallui/SmartIVRDialogActivity;->builder:Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/incallui/SmartIVRDialogActivity;->builder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0905f6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/SmartIVRDialogActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400a7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f100256

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/incallui/SmartIVRDialogActivity;->list:Landroid/widget/ListView;

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x1090003

    iget-object v3, p0, Lcom/android/incallui/SmartIVRDialogActivity;->cs:[Ljava/lang/CharSequence;

    invoke-direct {v0, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/incallui/SmartIVRDialogActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/android/incallui/SmartIVRDialogActivity;->list:Landroid/widget/ListView;

    new-instance v2, Lcom/android/incallui/SmartIVRDialogActivity$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/SmartIVRDialogActivity$1;-><init>(Lcom/android/incallui/SmartIVRDialogActivity;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/SmartIVRDialogActivity;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/incallui/SmartIVRDialogActivity;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SmartIVRDialogActivity;->di:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/incallui/SmartIVRDialogActivity;->di:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    iget-object v0, p0, Lcom/android/incallui/SmartIVRDialogActivity;->text:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/SmartIVRDialogActivity;->path:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/incallui/util/VisualCallCenter;->VCC_addShortcut(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "Achintya PRAKHAR SmartIVRDialogActivity:"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "api.add_shortcut returned  :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/incallui/SmartIVRDialogActivity;->finish()V

    goto/16 :goto_0
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/android/incallui/SmartIVRDialogActivity;->di:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SmartIVRDialogActivity;->di:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public removeSelected(I)V
    .locals 2

    const-string v0, "Achintya PRAKHAR SmartIVRDialogActivity:"

    const-string v1, "inside removeSelected()  "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/incallui/SmartIVRDialogActivity;->finish()V

    return-void
.end method
