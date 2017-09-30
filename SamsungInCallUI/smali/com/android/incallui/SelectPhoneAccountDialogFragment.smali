.class public Lcom/android/incallui/SelectPhoneAccountDialogFragment;
.super Landroid/app/DialogFragment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;,
        Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;
    }
.end annotation


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

.field private mListener:Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mTitleResId:I


# direct methods
.method public constructor <init>(IZLjava/util/List;Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;",
            "Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    iput p1, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mTitleResId:I

    iput-boolean p2, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mCanSetDefault:Z

    iput-object p3, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mAccountHandles:Ljava/util/List;

    iput-object p4, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mListener:Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/incallui/SelectPhoneAccountDialogFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mIsSelected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/incallui/SelectPhoneAccountDialogFragment;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mAccountHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/SelectPhoneAccountDialogFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mIsDefaultChecked:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/incallui/SelectPhoneAccountDialogFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mIsDefaultChecked:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/incallui/SelectPhoneAccountDialogFragment;)Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mListener:Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/incallui/SelectPhoneAccountDialogFragment;)Landroid/telecom/TelecomManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public static showAccountDialog(Landroid/app/FragmentManager;IZLjava/util/List;Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "IZ",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;",
            "Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/incallui/SelectPhoneAccountDialogFragment;-><init>(IZLjava/util/List;Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;)V

    const-string v1, "selectAccount"

    invoke-virtual {v0, p0, v1}, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static showAccountDialog(Landroid/app/FragmentManager;Ljava/util/List;Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;",
            "Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;",
            ")V"
        }
    .end annotation

    const v0, 0x7f090080

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1, p2}, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->showAccountDialog(Landroid/app/FragmentManager;IZLjava/util/List;Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mIsSelected:Z

    iput-boolean v0, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mIsDefaultChecked:Z

    invoke-virtual {p0}, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    iput-object v0, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    new-instance v0, Lcom/android/incallui/SelectPhoneAccountDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/SelectPhoneAccountDialogFragment$1;-><init>(Lcom/android/incallui/SelectPhoneAccountDialogFragment;)V

    new-instance v2, Lcom/android/incallui/SelectPhoneAccountDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/SelectPhoneAccountDialogFragment$2;-><init>(Lcom/android/incallui/SelectPhoneAccountDialogFragment;)V

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f040188

    iget-object v6, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mAccountHandles:Ljava/util/List;

    invoke-direct {v3, p0, v4, v5, v6}, Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;-><init>(Lcom/android/incallui/SelectPhoneAccountDialogFragment;Landroid/content/Context;ILjava/util/List;)V

    iget v4, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mTitleResId:I

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iget-boolean v0, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mCanSetDefault:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->getActivity()Landroid/app/Activity;

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

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    :cond_0
    return-object v3
.end method

.method public onPause()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mIsSelected:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mListener:Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    invoke-interface {v0}, Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;->onDialogDismissed()V

    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    return-void
.end method
