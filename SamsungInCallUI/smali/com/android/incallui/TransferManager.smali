.class public Lcom/android/incallui/TransferManager;
.super Landroid/app/Activity;

# interfaces
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/TransferManager$TransferDialog;
    }
.end annotation


# static fields
.field private static final CONTACT_IMPORT_INTENT:Landroid/content/Intent;

.field private static final MAX_NUMBER_LENGTH:I = 0x64

.field private static final NUM_PROJECTION:[Ljava/lang/String;

.field public static final PICK_CONTACT_NUMBER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TransferManager"

.field private static sInstance:Lcom/android/incallui/TransferManager;


# instance fields
.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private mBlindTransferNumber:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field private mInputField:Landroid/widget/AutoCompleteTextView;

.field private mListView:Landroid/widget/ListView;

.field private mSearchButton:Landroid/widget/ImageButton;

.field private mSecondaryNameTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/incallui/TransferManager;->NUM_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/TransferManager;->sInstance:Lcom/android/incallui/TransferManager;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/incallui/TransferManager;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    sget-object v0, Lcom/android/incallui/TransferManager;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    const-string v1, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/TransferManager;->mBlindTransferNumber:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/TransferManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/TransferManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/TransferManager;)Landroid/widget/AutoCompleteTextView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/TransferManager;->mInputField:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/incallui/TransferManager;Landroid/widget/AutoCompleteTextView;)Landroid/widget/AutoCompleteTextView;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/TransferManager;->mInputField:Landroid/widget/AutoCompleteTextView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/incallui/TransferManager;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/TransferManager;->imm:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/TransferManager;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/TransferManager;->mSecondaryNameTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/incallui/TransferManager;Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/TransferManager;->mSecondaryNameTextView:Landroid/widget/TextView;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/incallui/TransferManager;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/TransferManager;->mSearchButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/incallui/TransferManager;Landroid/widget/ImageButton;)Landroid/widget/ImageButton;
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/TransferManager;->mSearchButton:Landroid/widget/ImageButton;

    return-object p1
.end method

.method static synthetic access$500()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/android/incallui/TransferManager;->CONTACT_IMPORT_INTENT:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/incallui/TransferManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/TransferManager;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method private displayToast(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private shouldDismiss(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v2, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x0

    invoke-static {p2, v2, v1}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const/16 v7, 0x64

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, ""

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/TransferManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/incallui/TransferManager;->NUM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    const-string v0, "TransferManager"

    const-string v2, "onActivityResult: bad contact data, no results found."

    invoke-static {v0, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/TransferManager;->mBlindTransferNumber:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v7, :cond_4

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/TransferManager;->mInputField:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v2, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/TransferManager;->mInputField:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    goto :goto_0

    :cond_5
    const-string v0, "TransferManager"

    const-string v1, "onActivityResult: cancelled."

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lcom/android/incallui/TransferManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/incallui/TransferManager;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/incallui/TransferManager;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    invoke-virtual {p0}, Lcom/android/incallui/TransferManager;->showTransferDialog()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "TransferManager"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/android/incallui/TransferManager;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/TransferManager;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 1

    invoke-direct {p0, p2, p3}, Lcom/android/incallui/TransferManager;->shouldDismiss(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/TransferManager;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/TransferManager;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method showTransferDialog()V
    .locals 2

    new-instance v0, Lcom/android/incallui/TransferManager$TransferDialog;

    iget-object v1, p0, Lcom/android/incallui/TransferManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/TransferManager$TransferDialog;-><init>(Lcom/android/incallui/TransferManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/incallui/TransferManager;->mDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/incallui/TransferManager;->mDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/incallui/TransferManager$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/TransferManager$1;-><init>(Lcom/android/incallui/TransferManager;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/android/incallui/TransferManager;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method
