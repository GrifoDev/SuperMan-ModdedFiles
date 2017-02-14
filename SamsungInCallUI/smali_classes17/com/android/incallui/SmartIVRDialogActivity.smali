.class public Lcom/android/incallui/SmartIVRDialogActivity;
.super Landroid/app/Activity;
.source "SmartIVRDialogActivity.java"


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
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v2, "Achintya PRAKHAR SmartIVRDialogActivity:"

    const-string v3, "in On Create of dialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f040042

    invoke-virtual {p0, v2}, Lcom/android/incallui/SmartIVRDialogActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/android/incallui/SmartIVRDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "shortcut_path"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/SmartIVRDialogActivity;->path:Ljava/lang/String;

    const-string v2, "Achintya PRAKHAR SmartIVRDialogActivity:"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "path fetched from the SecInCallActivity is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/SmartIVRDialogActivity;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setMode(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

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
    .locals 8

    const-string v5, "Achintya PRAKHAR SmartIVRDialogActivity:"

    const-string v6, "in On Save of dialog"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v5, 0x7f1000f0

    invoke-virtual {p0, v5}, Lcom/android/incallui/SmartIVRDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/SmartIVRDialogActivity;->text:Ljava/lang/String;

    const-string v5, "Achintya PRAKHAR SmartIVRDialogActivity:"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "text fetched is :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/incallui/SmartIVRDialogActivity;->text:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/util/VisualCallCenter;->VCC_getShortcutForDialog()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/SmartIVRDialogActivity;->shortcutList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/incallui/SmartIVRDialogActivity;->shortcutList:Ljava/util/ArrayList;

    if-nez v5, :cond_0

    const-string v5, "Achintya PRAKHAR SmartIVRDialogActivity:"

    const-string v6, "shortcutList == null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/incallui/SmartIVRDialogActivity;->shortcutList:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/incallui/SmartIVRDialogActivity;->shortcutList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    check-cast v5, [Ljava/lang/CharSequence;

    iput-object v5, p0, Lcom/android/incallui/SmartIVRDialogActivity;->cs:[Ljava/lang/CharSequence;

    const-string v5, "Achintya PRAKHAR SmartIVRDialogActivity:"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "size of the shortcut list is :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/incallui/SmartIVRDialogActivity;->shortcutList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/incallui/SmartIVRDialogActivity;->shortcutList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_1

    const-string v5, "Achintya PRAKHAR SmartIVRDialogActivity:"

    const-string v6, "inside if ... need to replace item show dialog "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/app/AlertDialog$Builder;

    const/4 v6, 0x5

    invoke-direct {v5, p0, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iput-object v5, p0, Lcom/android/incallui/SmartIVRDialogActivity;->builder:Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/incallui/SmartIVRDialogActivity;->builder:Landroid/app/AlertDialog$Builder;

    const v6, 0x7f09052b

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/SmartIVRDialogActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v5, 0x7f040095

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v5, 0x7f1001df

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ListView;

    iput-object v5, p0, Lcom/android/incallui/SmartIVRDialogActivity;->list:Landroid/widget/ListView;

    new-instance v0, Landroid/widget/ArrayAdapter;

    const v5, 0x1090003

    iget-object v6, p0, Lcom/android/incallui/SmartIVRDialogActivity;->cs:[Ljava/lang/CharSequence;

    invoke-direct {v0, p0, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/android/incallui/SmartIVRDialogActivity;->list:Landroid/widget/ListView;

    invoke-virtual {v5, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v5, p0, Lcom/android/incallui/SmartIVRDialogActivity;->list:Landroid/widget/ListView;

    new-instance v6, Lcom/android/incallui/SmartIVRDialogActivity$1;

    invoke-direct {v6, p0}, Lcom/android/incallui/SmartIVRDialogActivity$1;-><init>(Lcom/android/incallui/SmartIVRDialogActivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v5, p0, Lcom/android/incallui/SmartIVRDialogActivity;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/incallui/SmartIVRDialogActivity;->builder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/incallui/SmartIVRDialogActivity;->di:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/android/incallui/SmartIVRDialogActivity;->di:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    iget-object v5, p0, Lcom/android/incallui/SmartIVRDialogActivity;->text:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/incallui/SmartIVRDialogActivity;->path:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/incallui/util/VisualCallCenter;->VCC_addShortcut(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const-string v5, "Achintya PRAKHAR SmartIVRDialogActivity:"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "api.add_shortcut returned  :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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
    .locals 5

    const-string v3, "Achintya PRAKHAR SmartIVRDialogActivity:"

    const-string v4, "inside removeSelected()  "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/incallui/SmartIVRDialogActivity;->cs:[Ljava/lang/CharSequence;

    aget-object v3, v3, p1

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    invoke-static {v2}, Lcom/android/incallui/util/VisualCallCenter;->VCC_deleteShortcut(Ljava/lang/String;)Z

    move-result v1

    invoke-static {}, Lcom/android/incallui/util/VisualCallCenter;->getInstance()Lcom/android/incallui/util/VisualCallCenter;

    iget-object v3, p0, Lcom/android/incallui/SmartIVRDialogActivity;->text:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/incallui/SmartIVRDialogActivity;->path:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/incallui/util/VisualCallCenter;->VCC_addShortcut(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/SmartIVRDialogActivity;->finish()V

    return-void
.end method
