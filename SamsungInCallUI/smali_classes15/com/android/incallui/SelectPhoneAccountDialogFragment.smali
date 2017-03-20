.class public Lcom/android/incallui/SelectPhoneAccountDialogFragment;
.super Landroid/app/DialogFragment;
.source "SelectPhoneAccountDialogFragment.java"


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
    .param p1, "titleResId"    # I
    .param p2, "canSetDefault"    # Z
    .param p4, "listener"    # Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;
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

    .prologue
    .line 95
    .local p3, "accountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 96
    iput p1, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mTitleResId:I

    .line 97
    iput-boolean p2, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mCanSetDefault:Z

    .line 98
    iput-object p3, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mAccountHandles:Ljava/util/List;

    .line 99
    iput-object p4, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mListener:Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    .line 100
    return-void
.end method

.method static synthetic access$002(Lcom/android/incallui/SelectPhoneAccountDialogFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/SelectPhoneAccountDialogFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mIsSelected:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/incallui/SelectPhoneAccountDialogFragment;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/SelectPhoneAccountDialogFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mAccountHandles:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/SelectPhoneAccountDialogFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/SelectPhoneAccountDialogFragment;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mIsDefaultChecked:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/incallui/SelectPhoneAccountDialogFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/SelectPhoneAccountDialogFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mIsDefaultChecked:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/incallui/SelectPhoneAccountDialogFragment;)Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/SelectPhoneAccountDialogFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mListener:Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/incallui/SelectPhoneAccountDialogFragment;)Landroid/telecom/TelecomManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/SelectPhoneAccountDialogFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method public static showAccountDialog(Landroid/app/FragmentManager;IZLjava/util/List;Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;)V
    .locals 2
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p1, "titleResId"    # I
    .param p2, "canSetDefault"    # Z
    .param p4, "listener"    # Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;
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

    .prologue
    .line 87
    .local p3, "accountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    new-instance v0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/incallui/SelectPhoneAccountDialogFragment;-><init>(IZLjava/util/List;Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;)V

    .line 90
    .local v0, "fragment":Lcom/android/incallui/SelectPhoneAccountDialogFragment;
    const-string v1, "selectAccount"

    invoke-virtual {v0, p0, v1}, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public static showAccountDialog(Landroid/app/FragmentManager;Ljava/util/List;Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;)V
    .locals 2
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p2, "listener"    # Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;
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

    .prologue
    .line 68
    .local p1, "accountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    const v0, 0x7f090061

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1, p2}, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->showAccountDialog(Landroid/app/FragmentManager;IZLjava/util/List;Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;)V

    .line 70
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x0

    .line 111
    iput-boolean v7, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mIsSelected:Z

    .line 112
    iput-boolean v7, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mIsDefaultChecked:Z

    .line 114
    invoke-virtual {p0}, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "telecom"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telecom/TelecomManager;

    iput-object v7, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 116
    new-instance v6, Lcom/android/incallui/SelectPhoneAccountDialogFragment$1;

    invoke-direct {v6, p0}, Lcom/android/incallui/SelectPhoneAccountDialogFragment$1;-><init>(Lcom/android/incallui/SelectPhoneAccountDialogFragment;)V

    .line 126
    .local v6, "selectionListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/android/incallui/SelectPhoneAccountDialogFragment$2;

    invoke-direct {v2, p0}, Lcom/android/incallui/SelectPhoneAccountDialogFragment$2;-><init>(Lcom/android/incallui/SelectPhoneAccountDialogFragment;)V

    .line 134
    .local v2, "checkListener":Landroid/widget/CompoundButton$OnCheckedChangeListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 135
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v5, Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;

    .line 136
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f040174

    iget-object v9, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mAccountHandles:Ljava/util/List;

    invoke-direct {v5, p0, v7, v8, v9}, Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;-><init>(Lcom/android/incallui/SelectPhoneAccountDialogFragment;Landroid/content/Context;ILjava/util/List;)V

    .line 140
    .local v5, "selectAccountListAdapter":Landroid/widget/ListAdapter;
    iget v7, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mTitleResId:I

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 141
    invoke-virtual {v7, v5, v6}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    .line 142
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 144
    .local v4, "dialog":Landroid/app/AlertDialog;
    iget-boolean v7, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mCanSetDefault:Z

    if-eqz v7, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    .line 147
    invoke-virtual {v7}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f040040

    const/4 v9, 0x0

    .line 148
    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 150
    .local v3, "checkboxLayout":Landroid/widget/LinearLayout;
    const v7, 0x7f1000e5

    .line 151
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 152
    .local v1, "cb":Landroid/widget/CheckBox;
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 154
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 157
    .end local v1    # "cb":Landroid/widget/CheckBox;
    .end local v3    # "checkboxLayout":Landroid/widget/LinearLayout;
    :cond_0
    return-object v4
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mIsSelected:Z

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->mListener:Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;

    invoke-interface {v0}, Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectPhoneAccountListener;->onDialogDismissed()V

    .line 223
    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onPause()V

    .line 224
    return-void
.end method
