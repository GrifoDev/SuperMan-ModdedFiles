.class Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SelectPhoneAccountDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectAccountListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/telecom/PhoneAccountHandle;",
        ">;"
    }
.end annotation


# instance fields
.field private mResId:I

.field final synthetic this$0:Lcom/android/incallui/SelectPhoneAccountDialogFragment;


# direct methods
.method public constructor <init>(Lcom/android/incallui/SelectPhoneAccountDialogFragment;Landroid/content/Context;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;->this$0:Lcom/android/incallui/SelectPhoneAccountDialogFragment;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput p3, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;->mResId:I

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    if-nez p2, :cond_2

    iget v1, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;->mResId:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;

    invoke-direct {v1, p0, v2}, Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;-><init>(Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;Lcom/android/incallui/SelectPhoneAccountDialogFragment$1;)V

    const v0, 0x7f10014f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->labelTextView:Landroid/widget/TextView;

    const v0, 0x7f10012b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->numberTextView:Landroid/widget/TextView;

    const v0, 0x7f100049

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    iget-object v3, p0, Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;->this$0:Lcom/android/incallui/SelectPhoneAccountDialogFragment;

    invoke-static {v3}, Lcom/android/incallui/SelectPhoneAccountDialogFragment;->access$500(Lcom/android/incallui/SelectPhoneAccountDialogFragment;)Landroid/telecom/TelecomManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, v1, Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->labelTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAddress()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAddress()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    iget-object v3, v1, Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->numberTextView:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v1, v1, Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-object p2

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;

    move-object v1, v0

    goto :goto_0

    :cond_3
    iget-object v3, v1, Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->numberTextView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, v1, Lcom/android/incallui/SelectPhoneAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->numberTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getAddress()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    move-object v0, v2

    goto :goto_2
.end method
