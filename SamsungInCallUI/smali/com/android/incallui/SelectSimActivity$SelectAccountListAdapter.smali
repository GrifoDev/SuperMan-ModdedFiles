.class Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SelectSimActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectAccountListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter$ViewHolder;
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
.field private mContext:Landroid/content/Context;

.field private mResId:I

.field final synthetic this$0:Lcom/android/incallui/SelectSimActivity;


# direct methods
.method public constructor <init>(Lcom/android/incallui/SelectSimActivity;Landroid/content/Context;ILjava/util/List;)V
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

    iput-object p1, p0, Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter;->this$0:Lcom/android/incallui/SelectSimActivity;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p2, p0, Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter;->mResId:I

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    if-nez p2, :cond_2

    iget v1, p0, Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter;->mResId:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter$ViewHolder;

    invoke-direct {v1, p0, v2}, Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter$ViewHolder;-><init>(Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter;Lcom/android/incallui/SelectSimActivity$1;)V

    const v0, 0x7f1004bc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter$ViewHolder;->simcardName:Landroid/widget/TextView;

    const v0, 0x7f1004bd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter$ViewHolder;->networkName:Landroid/widget/TextView;

    const v0, 0x7f100049

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    iget-object v2, p0, Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter;->this$0:Lcom/android/incallui/SelectSimActivity;

    invoke-static {v2}, Lcom/android/incallui/SelectSimActivity;->access$400(Lcom/android/incallui/SelectSimActivity;)Landroid/telecom/TelecomManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    const/16 v2, 0x17

    invoke-static {p1, v2}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimImage(II)I

    move-result v2

    iget-object v3, v1, Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter;->this$0:Lcom/android/incallui/SelectSimActivity;

    invoke-virtual {v4}, Lcom/android/incallui/SelectSimActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const-string v2, ""

    invoke-static {p1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimName(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter$ViewHolder;->simcardName:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter$ViewHolder;->simcardName:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v2, v1, Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter$ViewHolder;->networkName:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v1, v1, Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter$ViewHolder;->networkName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-object p2

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter$ViewHolder;

    move-object v1, v0

    goto :goto_0
.end method
