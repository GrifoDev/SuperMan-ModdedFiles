.class public Lcom/android/internal/app/ResolverTargetActionsDialogFragment;
.super Landroid/app/DialogFragment;
.source "ResolverTargetActionsDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final APP_INFO_INDEX:I = 0x1

.field private static final HIDE_PNNED:Ljava/lang/String; = "hide_pinned"

.field private static final NAME_KEY:Ljava/lang/String; = "componentName"

.field private static final PINNED_KEY:Ljava/lang/String; = "pinned"

.field private static final TITLE_KEY:Ljava/lang/String; = "title"

.field private static final TOGGLE_PIN_INDEX:I


# instance fields
.field private mIsHidePinned:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverTargetActionsDialogFragment;->mIsHidePinned:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/content/ComponentName;Z)V
    .locals 2

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverTargetActionsDialogFragment;->mIsHidePinned:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v1, "componentName"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v1, "pinned"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverTargetActionsDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/content/ComponentName;ZZ)V
    .locals 2

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverTargetActionsDialogFragment;->mIsHidePinned:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v1, "componentName"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string/jumbo v1, "pinned"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo v1, "hide_pinned"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverTargetActionsDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverTargetActionsDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v6, "componentName"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    iget-boolean v6, p0, Lcom/android/internal/app/ResolverTargetActionsDialogFragment;->mIsHidePinned:Z

    if-eqz v6, :cond_0

    const/4 p2, 0x1

    :cond_0
    packed-switch p2, :pswitch_data_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverTargetActionsDialogFragment;->dismiss()V

    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverTargetActionsDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/app/ChooserActivity;->getPinnedSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverTargetActionsDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->recreate()V

    goto :goto_0

    :cond_1
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v3, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_1

    :pswitch_1
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v7, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    const-string/jumbo v7, "package"

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v6

    const/high16 v7, 0x80000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ResolverTargetActionsDialogFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverTargetActionsDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "hide_pinned"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/app/ResolverTargetActionsDialogFragment;->mIsHidePinned:Z

    iget-boolean v2, p0, Lcom/android/internal/app/ResolverTargetActionsDialogFragment;->mIsHidePinned:Z

    if-eqz v2, :cond_0

    const v1, 0x10700b2

    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverTargetActionsDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1, p0}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string/jumbo v3, "title"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2

    :cond_0
    const-string/jumbo v2, "pinned"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const v1, 0x10700b1

    goto :goto_0

    :cond_1
    const v1, 0x10700b0

    goto :goto_0
.end method
