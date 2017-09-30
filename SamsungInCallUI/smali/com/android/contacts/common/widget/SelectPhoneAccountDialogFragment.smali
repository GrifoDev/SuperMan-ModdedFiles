.class public Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;
.super Landroid/app/DialogFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;,
        Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z

.field private f:Landroid/telecom/TelecomManager;

.field private g:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a(IZLjava/util/List;Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;)Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;
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
    new-instance v1, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;

    invoke-direct {v1}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "title_res_id"

    invoke-virtual {v2, v3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "can_set_default"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v3, "account_handles"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "listener"

    invoke-virtual {v2, v0, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v2}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {v1, p3}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->a(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;)V

    return-object v1
.end method

.method static synthetic a(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->e:Z

    return p1
.end method

.method static synthetic c(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->g:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    return-object v0
.end method

.method static synthetic d(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)Landroid/telecom/TelecomManager;
    .locals 1

    iget-object v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->f:Landroid/telecom/TelecomManager;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->g:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title_res_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->a:I

    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "can_set_default"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->b:Z

    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "account_handles"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->c:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "listener"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    iput-object v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->g:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    if-eqz p1, :cond_0

    const-string v0, "is_default_checked"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->e:Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->d:Z

    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    iput-object v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->f:Landroid/telecom/TelecomManager;

    new-instance v0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$1;-><init>(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)V

    new-instance v2, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$2;-><init>(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f040188

    iget-object v6, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->c:Ljava/util/List;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;-><init>(Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;Landroid/content/Context;ILjava/util/List;)V

    iget v4, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->a:I

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->b:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040049

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f100126

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-boolean v2, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->e:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    :cond_1
    return-object v3
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "is_default_checked"

    iget-boolean v1, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->e:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStop()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->g:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment;->g:Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/common/widget/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;->onReceiveResult(ILandroid/os/Bundle;)V

    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onStop()V

    return-void
.end method
