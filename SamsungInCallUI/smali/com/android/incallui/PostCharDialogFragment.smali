.class public Lcom/android/incallui/PostCharDialogFragment;
.super Landroid/app/DialogFragment;


# static fields
.field private static final KEY_CALL_ID:Ljava/lang/String; = "CallId"

.field private static final KEY_POST_DIAL_STRING:Ljava/lang/String; = "PostDialString"

.field private static final KEY_POST_DIAL_TYPE:Ljava/lang/String; = "PostDialType"

.field public static final POST_CHAR_PAUSE:Ljava/lang/String; = "postCharPause"

.field public static final POST_CHAR_WAIT:Ljava/lang/String; = "postCharWait"

.field private static final TAG:Ljava/lang/String; = "PostCharDialogFragment"


# instance fields
.field public mCallId:Ljava/lang/String;

.field private mPostDialStr:Ljava/lang/String;

.field private mPostDialType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const-string v0, "postCharWait"

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/PostCharDialogFragment;->setPostCharDialogValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/incallui/PostCharDialogFragment;->setPostCharDialogValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lcom/android/incallui/PostCharDialogFragment;->mPostDialType:Ljava/lang/String;

    const-string v1, "postCharWait"

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/PostCharDialogFragment;->mCallId:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/TelecomAdapter;->postDialContinue(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    if-eqz p1, :cond_0

    const-string v0, "CallId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/PostCharDialogFragment;->mCallId:Ljava/lang/String;

    const-string v0, "PostDialString"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/PostCharDialogFragment;->mPostDialStr:Ljava/lang/String;

    const-string v0, "PostDialType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/PostCharDialogFragment;->mPostDialType:Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/incallui/PostCharDialogFragment;->mPostDialType:Ljava/lang/String;

    const-string v2, "postCharWait"

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/PostCharDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090083

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/PostCharDialogFragment;->mPostDialStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/android/incallui/PostCharDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0b0010

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/incallui/PostCharDialogFragment;->mPostDialType:Ljava/lang/String;

    const-string v2, "postCharWait"

    if-ne v0, v2, :cond_2

    const v0, 0x7f09007b

    new-instance v2, Lcom/android/incallui/PostCharDialogFragment$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/PostCharDialogFragment$1;-><init>(Lcom/android/incallui/PostCharDialogFragment;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f090079

    new-instance v2, Lcom/android/incallui/PostCharDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/PostCharDialogFragment$2;-><init>(Lcom/android/incallui/PostCharDialogFragment;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_2
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    return-object v0

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/PostCharDialogFragment;->mPostDialType:Ljava/lang/String;

    const-string v2, "postCharPause"

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/PostCharDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "CallId"

    iget-object v1, p0, Lcom/android/incallui/PostCharDialogFragment;->mCallId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PostDialString"

    iget-object v1, p0, Lcom/android/incallui/PostCharDialogFragment;->mPostDialStr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "PostDialType"

    iget-object v1, p0, Lcom/android/incallui/PostCharDialogFragment;->mPostDialType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public setPostCharDialogValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/PostCharDialogFragment;->mCallId:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/incallui/PostCharDialogFragment;->mPostDialStr:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/incallui/PostCharDialogFragment;->mPostDialType:Ljava/lang/String;

    return-void
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p3, p4, p5}, Lcom/android/incallui/PostCharDialogFragment;->setPostCharDialogValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method
