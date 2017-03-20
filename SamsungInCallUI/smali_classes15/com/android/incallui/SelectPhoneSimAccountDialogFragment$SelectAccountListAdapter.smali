.class Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$SelectAccountListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SelectPhoneSimAccountDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectAccountListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$SelectAccountListAdapter$ViewHolder;
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

.field final synthetic this$0:Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;


# direct methods
.method public constructor <init>(Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;Landroid/content/Context;ILjava/util/List;)V
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
    .line 173
    .local p4, "accountHandles":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    iput-object p1, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$SelectAccountListAdapter;->this$0:Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;

    .line 174
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 175
    iput-object p2, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    .line 176
    iput p3, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$SelectAccountListAdapter;->mResId:I

    .line 177
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v10, 0x0

    .line 181
    iget-object v8, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    const-string v9, "layout_inflater"

    .line 182
    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 186
    .local v4, "inflater":Landroid/view/LayoutInflater;
    if-nez p2, :cond_3

    .line 188
    iget v8, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$SelectAccountListAdapter;->mResId:I

    invoke-virtual {v4, v8, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 189
    .local v7, "rowView":Landroid/view/View;
    new-instance v3, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$SelectAccountListAdapter$ViewHolder;

    invoke-direct {v3, p0, v10}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$SelectAccountListAdapter$ViewHolder;-><init>(Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$SelectAccountListAdapter;Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$1;)V

    .line 190
    .local v3, "holder":Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$SelectAccountListAdapter$ViewHolder;
    const v8, 0x7f100429

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->simcardName:Landroid/widget/TextView;

    .line 191
    const v8, 0x7f10042a

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v3, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->networkName:Landroid/widget/TextView;

    .line 192
    const v8, 0x7f10003f

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v3, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    .line 193
    invoke-virtual {v7, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 199
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$SelectAccountListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 200
    .local v1, "accountHandle":Landroid/telecom/PhoneAccountHandle;
    iget-object v8, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$SelectAccountListAdapter;->this$0:Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;

    # getter for: Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mTelecomManager:Landroid/telecom/TelecomManager;
    invoke-static {v8}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->access$300(Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;)Landroid/telecom/TelecomManager;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 201
    .local v0, "account":Landroid/telecom/PhoneAccount;
    const/16 v8, 0x17

    invoke-static {p1, v8}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimImage(II)I

    move-result v5

    .line 202
    .local v5, "mImage":I
    iget-object v8, v3, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->imageView:Landroid/widget/ImageView;

    iget-object v9, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$SelectAccountListAdapter;->this$0:Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;

    invoke-virtual {v9}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 204
    const-string v2, ""

    .line 205
    .local v2, "cardName":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimName(I)Ljava/lang/String;

    move-result-object v2

    .line 206
    const-string v6, ""

    .line 207
    .local v6, "plmn":Ljava/lang/String;
    # getter for: Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mIsDisplayCallbackDialog:Z
    invoke-static {}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->access$400()Z

    move-result v8

    if-eqz v8, :cond_4

    # getter for: Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mRecentlyUsedSim:I
    invoke-static {}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->access$500()I

    move-result v8

    if-ne p1, v8, :cond_4

    .line 208
    iget-object v8, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09022d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 231
    :cond_0
    :goto_1
    iget-object v8, v3, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->simcardName:Landroid/widget/TextView;

    if-eqz v8, :cond_1

    .line 232
    iget-object v8, v3, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->simcardName:Landroid/widget/TextView;

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 234
    iget-object v8, v3, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$SelectAccountListAdapter$ViewHolder;->networkName:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    :cond_2
    return-object v7

    .line 195
    .end local v0    # "account":Landroid/telecom/PhoneAccount;
    .end local v1    # "accountHandle":Landroid/telecom/PhoneAccountHandle;
    .end local v2    # "cardName":Ljava/lang/String;
    .end local v3    # "holder":Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$SelectAccountListAdapter$ViewHolder;
    .end local v5    # "mImage":I
    .end local v6    # "plmn":Ljava/lang/String;
    .end local v7    # "rowView":Landroid/view/View;
    :cond_3
    move-object v7, p2

    .line 196
    .restart local v7    # "rowView":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$SelectAccountListAdapter$ViewHolder;

    .restart local v3    # "holder":Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$SelectAccountListAdapter$ViewHolder;
    goto :goto_0

    .line 209
    .restart local v0    # "account":Landroid/telecom/PhoneAccount;
    .restart local v1    # "accountHandle":Landroid/telecom/PhoneAccountHandle;
    .restart local v2    # "cardName":Ljava/lang/String;
    .restart local v5    # "mImage":I
    .restart local v6    # "plmn":Ljava/lang/String;
    :cond_4
    # getter for: Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mIsDisplayCallbackDialog:Z
    invoke-static {}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->access$400()Z

    move-result v8

    if-eqz v8, :cond_5

    # getter for: Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->mPreferredSim:I
    invoke-static {}, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment;->access$600()I

    move-result v8

    if-ne p1, v8, :cond_5

    .line 210
    iget-object v8, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090213

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 212
    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 213
    invoke-virtual {v0}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 214
    :cond_6
    const-string v8, "feature_chn"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "feature_hktw"

    invoke-static {v8}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 215
    :cond_7
    const-string v8, "CHINA MOBILE"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "CHINA  MOBILE"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 216
    :cond_8
    iget-object v8, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0900d9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 217
    :cond_9
    const-string v8, "CHN-UNICOM"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    const-string v8, "CHN-CUGSM"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 218
    :cond_a
    iget-object v8, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0900e4

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 219
    :cond_b
    const-string v8, "China Telecom"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 220
    iget-object v8, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0900e3

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 221
    :cond_c
    const-string v8, "Chunghwa Telecom"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 222
    iget-object v8, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0900d8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 223
    :cond_d
    const-string v8, "Far EasTone"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 224
    iget-object v8, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09011a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 225
    :cond_e
    const-string v8, "VIBO"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 226
    iget-object v8, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09031b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 227
    :cond_f
    const-string v8, "TW Mobile"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 228
    iget-object v8, p0, Lcom/android/incallui/SelectPhoneSimAccountDialogFragment$SelectAccountListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0902ea

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1
.end method
