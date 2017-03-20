.class public Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CallButtonFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/fragment/CallButtonFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BluetoothArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final DISMISS_BT_POPUP:I = 0x1

.field private static final DISMISS_BT_POPUP_DELAY:I = 0x1f4


# instance fields
.field private mBTIconList:[I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mStringList:[Ljava/lang/String;

.field private resId:I

.field final synthetic this$0:Lcom/android/incallui/fragment/CallButtonFragment;


# direct methods
.method public constructor <init>(Lcom/android/incallui/fragment/CallButtonFragment;Landroid/content/Context;I[Ljava/lang/String;[I)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/incallui/fragment/CallButtonFragment;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "id"    # I
    .param p4, "items"    # [Ljava/lang/String;
    .param p5, "btIconList"    # [I

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->this$0:Lcom/android/incallui/fragment/CallButtonFragment;

    .line 195
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 172
    new-instance v0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$1;-><init>(Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->mHandler:Landroid/os/Handler;

    .line 196
    iput-object p2, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->mContext:Landroid/content/Context;

    .line 197
    iput-object p4, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->mStringList:[Ljava/lang/String;

    .line 198
    iput p3, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->resId:I

    .line 199
    iput-object p5, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->mBTIconList:[I

    .line 200
    return-void
.end method


# virtual methods
.method public activeBTDevice(I)V
    .locals 10
    .param p1, "index"    # I

    .prologue
    .line 257
    iget-object v5, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->this$0:Lcom/android/incallui/fragment/CallButtonFragment;

    iget-object v5, v5, Lcom/android/incallui/fragment/CallButtonFragment;->mDeviceList:Ljava/util/List;

    if-eqz v5, :cond_0

    const/4 v5, -0x1

    if-eq p1, v5, :cond_0

    .line 258
    iget-object v5, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->this$0:Lcom/android/incallui/fragment/CallButtonFragment;

    iget-object v5, v5, Lcom/android/incallui/fragment/CallButtonFragment;->mDeviceList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 259
    .local v2, "count":I
    if-lt p1, v2, :cond_2

    .line 279
    .end local v2    # "count":I
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    .line 280
    .local v1, "call":Lcom/android/incallui/Call;
    if-eqz v1, :cond_1

    .line 281
    iget-object v5, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->this$0:Lcom/android/incallui/fragment/CallButtonFragment;

    invoke-virtual {v5, v1}, Lcom/android/incallui/fragment/CallButtonFragment;->updateCallButtons(Lcom/android/incallui/Call;)V

    .line 283
    :cond_1
    iget-object v5, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->this$0:Lcom/android/incallui/fragment/CallButtonFragment;

    # invokes: Lcom/android/incallui/fragment/CallButtonFragment;->resetBluetoothDeviceList()V
    invoke-static {v5}, Lcom/android/incallui/fragment/CallButtonFragment;->access$100(Lcom/android/incallui/fragment/CallButtonFragment;)V

    .line 285
    iget-object v5, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    const-wide/16 v8, 0x1f4

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 286
    return-void

    .line 262
    .end local v1    # "call":Lcom/android/incallui/Call;
    .restart local v2    # "count":I
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BT Device - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is selected."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 263
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getBluetoothProfileManager()Lcom/android/incallui/BluetoothProfileManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/BluetoothProfileManager;->getBluetoothHeadset()Landroid/bluetooth/BluetoothHeadset;

    move-result-object v0

    .line 264
    .local v0, "bluetoothHeadset":Landroid/bluetooth/BluetoothHeadset;
    iget-object v5, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->this$0:Lcom/android/incallui/fragment/CallButtonFragment;

    iget-object v5, v5, Lcom/android/incallui/fragment/CallButtonFragment;->mDeviceList:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 265
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    .line 266
    invoke-static {v0, v3}, Lcom/android/incallui/wrapper/BluetoothHeadsetWrapper;->connectAudio(Landroid/bluetooth/BluetoothHeadset;Landroid/bluetooth/BluetoothDevice;)Z

    .line 269
    const/4 v4, 0x0

    .line 270
    .local v4, "event":Ljava/lang/String;
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVoiceCall()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 271
    const v5, 0x7f0903e6

    invoke-static {v5}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 274
    :goto_1
    const v5, 0x7f0903e4

    invoke-static {v5}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->mStringList:[Ljava/lang/String;

    aget-object v6, v6, p1

    invoke-static {v4, v5, v6}, Lcom/android/incallui/util/SALogging;->sendSAEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 273
    :cond_3
    const v5, 0x7f0903e5

    invoke-static {v5}, Lcom/android/incallui/util/SALogging;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public activeBTDevice(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 245
    .local v0, "tag":Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$ViewHolder;

    if-eqz v1, :cond_0

    .line 246
    check-cast v0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$ViewHolder;

    .end local v0    # "tag":Ljava/lang/Object;
    iget-object v1, v0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$ViewHolder;->mBTItemHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 248
    .restart local v0    # "tag":Ljava/lang/Object;
    :cond_0
    if-eqz v0, :cond_1

    .line 249
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "tag":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->activeBTDevice(I)V

    .line 254
    :goto_0
    return-void

    .line 251
    .restart local v0    # "tag":Ljava/lang/Object;
    :cond_1
    const-string v1, "Invalid Bluetooth Item view ID!"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    const v6, 0x106000c

    .line 204
    move-object v2, p2

    .line 207
    .local v2, "row":Landroid/view/View;
    if-nez v2, :cond_2

    .line 208
    iget-object v3, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 209
    .local v0, "inflator":Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->resId:I

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 210
    new-instance v1, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$ViewHolder;

    invoke-direct {v1, p0, v5}, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$ViewHolder;-><init>(Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;Lcom/android/incallui/fragment/CallButtonFragment$1;)V

    .line 211
    .local v1, "mViewHolder":Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$ViewHolder;
    const v3, 0x7f1001f8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v1, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$ViewHolder;->mBTItemHolder:Landroid/widget/LinearLayout;

    .line 212
    const v3, 0x7f1001f9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$ViewHolder;->mBTImageView:Landroid/widget/ImageView;

    .line 213
    const v3, 0x7f1001fa

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    .line 215
    iget-object v3, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/incallui/util/SecOpenThemeUtils;->isThemeApplied(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 216
    iget-object v3, v1, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$ViewHolder;->mBTImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 217
    iget-object v3, v1, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 219
    :cond_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 224
    .end local v0    # "inflator":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v3, v1, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$ViewHolder;->mBTItemHolder:Landroid/widget/LinearLayout;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 225
    iget-object v3, v1, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$ViewHolder;->mBTItemHolder:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->hasOnClickListeners()Z

    move-result v3

    if-nez v3, :cond_1

    .line 226
    iget-object v3, v1, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$ViewHolder;->mBTItemHolder:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$2;

    invoke-direct {v4, p0}, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$2;-><init>(Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    :cond_1
    iget-object v3, v1, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$ViewHolder;->mBTImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->mBTIconList:[I

    aget v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 235
    iget-object v3, v1, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$ViewHolder;->mBTImageView:Landroid/widget/ImageView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 237
    iget-object v3, v1, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter;->mStringList:[Ljava/lang/String;

    aget-object v4, v4, p1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    iget-object v3, v1, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 240
    return-object v2

    .line 221
    .end local v1    # "mViewHolder":Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$ViewHolder;
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$ViewHolder;

    .restart local v1    # "mViewHolder":Lcom/android/incallui/fragment/CallButtonFragment$BluetoothArrayAdapter$ViewHolder;
    goto :goto_0
.end method
