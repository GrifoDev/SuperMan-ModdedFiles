.class public Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;
.super Landroid/app/DialogFragment;
.source "SelectPhoneAccountDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;,
        Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;
    }
.end annotation


# static fields
.field private static final ARG_ACCOUNT_HANDLES:Ljava/lang/String; = "account_handles"

.field private static final ARG_CAN_SET_DEFAULT:Ljava/lang/String; = "can_set_default"

.field private static final ARG_IS_DEFAULT_CHECKED:Ljava/lang/String; = "is_default_checked"

.field private static final ARG_LISTENER:Ljava/lang/String; = "listener"

.field private static final ARG_TITLE_RES_ID:Ljava/lang/String; = "title_res_id"


# instance fields
.field private mAccountHandles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation
.end field

.field private mCanSetDefault:Z

.field private mIsDefaultChecked:Z

.field private mIsSelected:Z

.field private mListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mTitleResId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mIsSelected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mAccountHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mIsDefaultChecked:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mIsDefaultChecked:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)Landroid/telecom/TelecomManager;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public static newInstance(IZLjava/util/List;Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;)Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;",
            "Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;",
            ")",
            "Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    new-instance v2, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    invoke-direct {v2}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "title_res_id"

    invoke-virtual {v1, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "can_set_default"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "account_handles"

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v3, "listener"

    invoke-virtual {v1, v3, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v2, v1}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v2, p3}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->setListener(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;)V

    return-object v2
.end method

.method public static newInstance(Ljava/util/List;Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;)Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;",
            "Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;",
            ")",
            "Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;"
        }
    .end annotation

    const v0, 0x7f090061

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->newInstance(IZLjava/util/List;Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;)Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10

    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "title_res_id"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mTitleResId:I

    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "can_set_default"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mCanSetDefault:Z

    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "account_handles"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mAccountHandles:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    const-string v8, "listener"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    iput-object v7, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    if-eqz p1, :cond_0

    const-string v7, "is_default_checked"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mIsDefaultChecked:Z

    :cond_0
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mIsSelected:Z

    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "telecom"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telecom/TelecomManager;

    iput-object v7, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    new-instance v6, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$1;

    invoke-direct {v6, p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$1;-><init>(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)V

    new-instance v2, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$2;-><init>(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f040174

    iget-object v9, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mAccountHandles:Ljava/util/List;

    invoke-direct {v5, p0, v7, v8, v9}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;-><init>(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;Landroid/content/Context;ILjava/util/List;)V

    iget v7, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mTitleResId:I

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iget-boolean v7, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mCanSetDefault:Z

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f040040

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const v7, 0x7f1000e5

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-boolean v7, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mIsDefaultChecked:Z

    invoke-virtual {v1, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    :cond_1
    return-object v4
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "is_default_checked"

    iget-boolean v1, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mIsDefaultChecked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStop()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mIsSelected:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;->onReceiveResult(ILandroid/os/Bundle;)V

    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    return-void
.end method

.method public setListener(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->mListener:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    return-void
.end method
