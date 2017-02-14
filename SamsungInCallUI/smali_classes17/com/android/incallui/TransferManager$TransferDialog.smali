.class Lcom/android/incallui/TransferManager$TransferDialog;
.super Landroid/app/AlertDialog;
.source "TransferManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/TransferManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransferDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/TransferManager;


# direct methods
.method public constructor <init>(Lcom/android/incallui/TransferManager;Landroid/content/Context;)V
    .locals 11

    const/16 v10, 0x8

    const/4 v9, 0x0

    iput-object p1, p0, Lcom/android/incallui/TransferManager$TransferDialog;->this$0:Lcom/android/incallui/TransferManager;

    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/UiAdapter;->getCallCardPresenter()Lcom/android/incallui/CallCardPresenter;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->getSecondaryNameForCall()Ljava/lang/String;

    move-result-object v5

    :cond_0
    # getter for: Lcom/android/incallui/TransferManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/incallui/TransferManager;->access$000(Lcom/android/incallui/TransferManager;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v7, 0x7f040115

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f1002af

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/AutoCompleteTextView;

    # setter for: Lcom/android/incallui/TransferManager;->mInputField:Landroid/widget/AutoCompleteTextView;
    invoke-static {p1, v7}, Lcom/android/incallui/TransferManager;->access$102(Lcom/android/incallui/TransferManager;Landroid/widget/AutoCompleteTextView;)Landroid/widget/AutoCompleteTextView;

    # getter for: Lcom/android/incallui/TransferManager;->mInputField:Landroid/widget/AutoCompleteTextView;
    invoke-static {p1}, Lcom/android/incallui/TransferManager;->access$100(Lcom/android/incallui/TransferManager;)Landroid/widget/AutoCompleteTextView;

    move-result-object v7

    if-eqz v7, :cond_1

    # getter for: Lcom/android/incallui/TransferManager;->mInputField:Landroid/widget/AutoCompleteTextView;
    invoke-static {p1}, Lcom/android/incallui/TransferManager;->access$100(Lcom/android/incallui/TransferManager;)Landroid/widget/AutoCompleteTextView;

    move-result-object v7

    new-instance v8, Lcom/android/incallui/TransferManager$TransferDialog$1;

    invoke-direct {v8, p0, p1}, Lcom/android/incallui/TransferManager$TransferDialog$1;-><init>(Lcom/android/incallui/TransferManager$TransferDialog;Lcom/android/incallui/TransferManager;)V

    invoke-virtual {v7, v8}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_1
    const v7, 0x7f100373

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    # setter for: Lcom/android/incallui/TransferManager;->mSecondaryNameTextView:Landroid/widget/TextView;
    invoke-static {p1, v7}, Lcom/android/incallui/TransferManager;->access$302(Lcom/android/incallui/TransferManager;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v7, 0x7f10005d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    # setter for: Lcom/android/incallui/TransferManager;->mSearchButton:Landroid/widget/ImageButton;
    invoke-static {p1, v7}, Lcom/android/incallui/TransferManager;->access$402(Lcom/android/incallui/TransferManager;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    # getter for: Lcom/android/incallui/TransferManager;->mSearchButton:Landroid/widget/ImageButton;
    invoke-static {p1}, Lcom/android/incallui/TransferManager;->access$400(Lcom/android/incallui/TransferManager;)Landroid/widget/ImageButton;

    move-result-object v7

    if-eqz v7, :cond_2

    # getter for: Lcom/android/incallui/TransferManager;->mSearchButton:Landroid/widget/ImageButton;
    invoke-static {p1}, Lcom/android/incallui/TransferManager;->access$400(Lcom/android/incallui/TransferManager;)Landroid/widget/ImageButton;

    move-result-object v7

    new-instance v8, Lcom/android/incallui/TransferManager$TransferDialog$2;

    invoke-direct {v8, p0, p1}, Lcom/android/incallui/TransferManager$TransferDialog$2;-><init>(Lcom/android/incallui/TransferManager$TransferDialog;Lcom/android/incallui/TransferManager;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    # getter for: Lcom/android/incallui/TransferManager;->mSearchButton:Landroid/widget/ImageButton;
    invoke-static {p1}, Lcom/android/incallui/TransferManager;->access$400(Lcom/android/incallui/TransferManager;)Landroid/widget/ImageButton;

    move-result-object v7

    if-eqz v7, :cond_4

    # getter for: Lcom/android/incallui/TransferManager;->mSecondaryNameTextView:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/android/incallui/TransferManager;->access$300(Lcom/android/incallui/TransferManager;)Landroid/widget/TextView;

    move-result-object v7

    if-eqz v7, :cond_4

    # getter for: Lcom/android/incallui/TransferManager;->mInputField:Landroid/widget/AutoCompleteTextView;
    invoke-static {p1}, Lcom/android/incallui/TransferManager;->access$100(Lcom/android/incallui/TransferManager;)Landroid/widget/AutoCompleteTextView;

    move-result-object v7

    if-eqz v7, :cond_4

    if-eqz v0, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_3
    # getter for: Lcom/android/incallui/TransferManager;->mSearchButton:Landroid/widget/ImageButton;
    invoke-static {p1}, Lcom/android/incallui/TransferManager;->access$400(Lcom/android/incallui/TransferManager;)Landroid/widget/ImageButton;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    # getter for: Lcom/android/incallui/TransferManager;->mInputField:Landroid/widget/AutoCompleteTextView;
    invoke-static {p1}, Lcom/android/incallui/TransferManager;->access$100(Lcom/android/incallui/TransferManager;)Landroid/widget/AutoCompleteTextView;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/AutoCompleteTextView;->setVisibility(I)V

    # getter for: Lcom/android/incallui/TransferManager;->mSecondaryNameTextView:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/android/incallui/TransferManager;->access$300(Lcom/android/incallui/TransferManager;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v7, "TransferManager"

    const-string v8, "mSearchButton VISIBLE"

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    invoke-virtual {p0, v6}, Lcom/android/incallui/TransferManager$TransferDialog;->setView(Landroid/view/View;)V

    const v7, 0x7f090134

    invoke-virtual {p0, v7}, Lcom/android/incallui/TransferManager$TransferDialog;->setTitle(I)V

    const/4 v7, -0x1

    # getter for: Lcom/android/incallui/TransferManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/incallui/TransferManager;->access$000(Lcom/android/incallui/TransferManager;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09025b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/incallui/TransferManager$TransferDialog$3;

    invoke-direct {v9, p0, p1, v3, v0}, Lcom/android/incallui/TransferManager$TransferDialog$3;-><init>(Lcom/android/incallui/TransferManager$TransferDialog;Lcom/android/incallui/TransferManager;Lcom/android/incallui/Call;Lcom/android/incallui/Call;)V

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/incallui/TransferManager$TransferDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v7, -0x2

    # getter for: Lcom/android/incallui/TransferManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/incallui/TransferManager;->access$000(Lcom/android/incallui/TransferManager;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0900c6

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/android/incallui/TransferManager$TransferDialog$4;

    invoke-direct {v9, p0, p1}, Lcom/android/incallui/TransferManager$TransferDialog$4;-><init>(Lcom/android/incallui/TransferManager$TransferDialog;Lcom/android/incallui/TransferManager;)V

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/incallui/TransferManager$TransferDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    :cond_5
    # getter for: Lcom/android/incallui/TransferManager;->mSearchButton:Landroid/widget/ImageButton;
    invoke-static {p1}, Lcom/android/incallui/TransferManager;->access$400(Lcom/android/incallui/TransferManager;)Landroid/widget/ImageButton;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/ImageButton;->setVisibility(I)V

    # getter for: Lcom/android/incallui/TransferManager;->mSecondaryNameTextView:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/android/incallui/TransferManager;->access$300(Lcom/android/incallui/TransferManager;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    # getter for: Lcom/android/incallui/TransferManager;->mSecondaryNameTextView:Landroid/widget/TextView;
    invoke-static {p1}, Lcom/android/incallui/TransferManager;->access$300(Lcom/android/incallui/TransferManager;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    # getter for: Lcom/android/incallui/TransferManager;->mInputField:Landroid/widget/AutoCompleteTextView;
    invoke-static {p1}, Lcom/android/incallui/TransferManager;->access$100(Lcom/android/incallui/TransferManager;)Landroid/widget/AutoCompleteTextView;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/widget/AutoCompleteTextView;->setVisibility(I)V

    const-string v7, "TransferManager"

    const-string v8, "mSearchButton gone"

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
