.class Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SelectSimActivity.java"


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
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "resource"    # I
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

    .prologue
    .line 208
    .local p4, "accountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    iput-object p1, p0, Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter;->this$0:Lcom/android/incallui/SelectSimActivity;

    .line 209
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 210
    iput-object p2, p0, Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    .line 211
    iput p3, p0, Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter;->mResId:I

    .line 212
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v9, 0x0

    .line 216
    iget-object v7, p0, Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    const-string v8, "layout_inflater"

    .line 217
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 221
    .local v4, "inflater":Landroid/view/LayoutInflater;
    if-nez p2, :cond_2

    .line 223
    iget v7, p0, Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter;->mResId:I

    invoke-virtual {v4, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 224
    .local v6, "rowView":Landroid/view/View;
    new-instance v3, Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter$ViewHolder;

    invoke-direct {v3, p0, v9}, Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter$ViewHolder;-><init>(Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter;Lcom/android/incallui/SelectSimActivity$1;)V

    .line 225
    .local v3, "holder":Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter$ViewHolder;
    const v7, 0x7f100429

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v3, Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter$ViewHolder;->simcardName:Landroid/widget/TextView;

    .line 226
    const v7, 0x7f10042a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v3, Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter$ViewHolder;->networkName:Landroid/widget/TextView;

    .line 227
    const v7, 0x7f10003f

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v3, Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 228
    invoke-virtual {v6, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 234
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 235
    .local v1, "accountHandle":Landroid/telecom/PhoneAccountHandle;
    iget-object v7, p0, Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter;->this$0:Lcom/android/incallui/SelectSimActivity;

    # getter for: Lcom/android/incallui/SelectSimActivity;->mTelecomManager:Landroid/telecom/TelecomManager;
    invoke-static {v7}, Lcom/android/incallui/SelectSimActivity;->access$400(Lcom/android/incallui/SelectSimActivity;)Landroid/telecom/TelecomManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 236
    .local v0, "account":Landroid/telecom/PhoneAccount;
    const/16 v7, 0x17

    invoke-static {p1, v7}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimImage(II)I

    move-result v5

    .line 237
    .local v5, "mImage":I
    iget-object v7, v3, Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter;->this$0:Lcom/android/incallui/SelectSimActivity;

    invoke-virtual {v8}, Lcom/android/incallui/SelectSimActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 238
    const-string v2, ""

    .line 239
    .local v2, "cardName":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimName(I)Ljava/lang/String;

    move-result-object v2

    .line 240
    iget-object v7, v3, Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter$ViewHolder;->simcardName:Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 241
    iget-object v7, v3, Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter$ViewHolder;->simcardName:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    :cond_0
    iget-object v7, v3, Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter$ViewHolder;->networkName:Landroid/widget/TextView;

    if-eqz v7, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 243
    iget-object v7, v3, Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter$ViewHolder;->networkName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    :cond_1
    return-object v6

    .line 230
    .end local v0    # "account":Landroid/telecom/PhoneAccount;
    .end local v1    # "accountHandle":Landroid/telecom/PhoneAccountHandle;
    .end local v2    # "cardName":Ljava/lang/String;
    .end local v3    # "holder":Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter$ViewHolder;
    .end local v5    # "mImage":I
    .end local v6    # "rowView":Landroid/view/View;
    :cond_2
    move-object v6, p2

    .line 231
    .restart local v6    # "rowView":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter$ViewHolder;

    .restart local v3    # "holder":Lcom/android/incallui/SelectSimActivity$SelectAccountListAdapter$ViewHolder;
    goto :goto_0
.end method
