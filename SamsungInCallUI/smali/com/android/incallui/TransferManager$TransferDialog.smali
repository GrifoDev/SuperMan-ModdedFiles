.class Lcom/android/incallui/TransferManager$TransferDialog;
.super Landroid/app/AlertDialog;


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
    .locals 8

    const/4 v2, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x0

    iput-object p1, p0, Lcom/android/incallui/TransferManager$TransferDialog;->this$0:Lcom/android/incallui/TransferManager;

    invoke-direct {p0, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v4

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/UiAdapter;->getCallCardPresenter()Lcom/android/incallui/CallCardPresenter;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->getSecondaryNameForCall()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    invoke-static {p1}, Lcom/android/incallui/TransferManager;->access$000(Lcom/android/incallui/TransferManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v5, 0x7f040136

    invoke-virtual {v0, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f10033b

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    invoke-static {p1, v0}, Lcom/android/incallui/TransferManager;->access$102(Lcom/android/incallui/TransferManager;Landroid/widget/AutoCompleteTextView;)Landroid/widget/AutoCompleteTextView;

    invoke-static {p1}, Lcom/android/incallui/TransferManager;->access$100(Lcom/android/incallui/TransferManager;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/incallui/TransferManager;->access$100(Lcom/android/incallui/TransferManager;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    new-instance v5, Lcom/android/incallui/TransferManager$TransferDialog$1;

    invoke-direct {v5, p0, p1}, Lcom/android/incallui/TransferManager$TransferDialog$1;-><init>(Lcom/android/incallui/TransferManager$TransferDialog;Lcom/android/incallui/TransferManager;)V

    invoke-virtual {v0, v5}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_0
    const v0, 0x7f100414

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p1, v0}, Lcom/android/incallui/TransferManager;->access$302(Lcom/android/incallui/TransferManager;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f100067

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-static {p1, v0}, Lcom/android/incallui/TransferManager;->access$402(Lcom/android/incallui/TransferManager;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;

    invoke-static {p1}, Lcom/android/incallui/TransferManager;->access$400(Lcom/android/incallui/TransferManager;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/incallui/TransferManager;->access$400(Lcom/android/incallui/TransferManager;)Landroid/widget/ImageButton;

    move-result-object v0

    new-instance v5, Lcom/android/incallui/TransferManager$TransferDialog$2;

    invoke-direct {v5, p0, p1}, Lcom/android/incallui/TransferManager$TransferDialog$2;-><init>(Lcom/android/incallui/TransferManager$TransferDialog;Lcom/android/incallui/TransferManager;)V

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-static {p1}, Lcom/android/incallui/TransferManager;->access$400(Lcom/android/incallui/TransferManager;)Landroid/widget/ImageButton;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/android/incallui/TransferManager;->access$300(Lcom/android/incallui/TransferManager;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lcom/android/incallui/TransferManager;->access$100(Lcom/android/incallui/TransferManager;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz v4, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    invoke-static {p1}, Lcom/android/incallui/TransferManager;->access$400(Lcom/android/incallui/TransferManager;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-static {p1}, Lcom/android/incallui/TransferManager;->access$100(Lcom/android/incallui/TransferManager;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/AutoCompleteTextView;->setVisibility(I)V

    invoke-static {p1}, Lcom/android/incallui/TransferManager;->access$300(Lcom/android/incallui/TransferManager;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v0, "TransferManager"

    const-string v1, "mSearchButton VISIBLE"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/incallui/TransferManager$TransferDialog;->setView(Landroid/view/View;)V

    const v0, 0x7f090194

    invoke-virtual {p0, v0}, Lcom/android/incallui/TransferManager$TransferDialog;->setTitle(I)V

    const/4 v0, -0x1

    invoke-static {p1}, Lcom/android/incallui/TransferManager;->access$000(Lcom/android/incallui/TransferManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0902d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/TransferManager$TransferDialog$3;

    invoke-direct {v2, p0, p1, v3, v4}, Lcom/android/incallui/TransferManager$TransferDialog$3;-><init>(Lcom/android/incallui/TransferManager$TransferDialog;Lcom/android/incallui/TransferManager;Lcom/android/incallui/Call;Lcom/android/incallui/Call;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/incallui/TransferManager$TransferDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, -0x2

    invoke-static {p1}, Lcom/android/incallui/TransferManager;->access$000(Lcom/android/incallui/TransferManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090105

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/incallui/TransferManager$TransferDialog$4;

    invoke-direct {v2, p0, p1}, Lcom/android/incallui/TransferManager$TransferDialog$4;-><init>(Lcom/android/incallui/TransferManager$TransferDialog;Lcom/android/incallui/TransferManager;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/incallui/TransferManager$TransferDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    :cond_4
    invoke-static {p1}, Lcom/android/incallui/TransferManager;->access$400(Lcom/android/incallui/TransferManager;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    invoke-static {p1}, Lcom/android/incallui/TransferManager;->access$300(Lcom/android/incallui/TransferManager;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {p1}, Lcom/android/incallui/TransferManager;->access$300(Lcom/android/incallui/TransferManager;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/android/incallui/TransferManager;->access$100(Lcom/android/incallui/TransferManager;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/widget/AutoCompleteTextView;->setVisibility(I)V

    const-string v0, "TransferManager"

    const-string v1, "mSearchButton gone"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v1, v2

    goto/16 :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
